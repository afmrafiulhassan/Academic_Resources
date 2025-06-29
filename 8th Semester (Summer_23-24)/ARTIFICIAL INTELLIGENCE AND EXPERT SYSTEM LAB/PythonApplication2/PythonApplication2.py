def ucs(start_node, stop_node):
    open_set = set([start_node])  # Nodes to be evaluated
    closed_set = set()             # Nodes already evaluated
    g = {start_node: 0}            # Cost from start node to each node
    parents = {start_node: start_node}  # Parent mapping for path reconstruction

    while len(open_set) > 0:
        n = None
        # Node with the lowest cost is selected
        for v in open_set:
            if n is None or g[v] < g[n]:
                n = v

        if n == stop_node:
            # If the current node is the goal node, reconstruct the path
            path = []
            while parents[n] != n:
                path.append(n)
                n = parents[n]
            path.append(start_node)
            path.reverse()
            print('Path found: {}'.format(path))
            return path

        # Remove n from the open set and add it to the closed set
        open_set.remove(n)
        closed_set.add(n)

        # Explore neighbors
        for (m, weight) in get_neighbors(n):
            if m not in closed_set:
                # Calculate the new cost to reach m
                new_cost = g[n] + weight
                if m not in open_set:
                    open_set.add(m)
                    g[m] = new_cost
                    parents[m] = n
                elif new_cost < g[m]:
                    # Update cost and parent if the new cost is lower
                    g[m] = new_cost
                    parents[m] = n

    print('Path does not exist!')
    return None

def get_neighbors(v):
    if v in Graph_nodes:
        return Graph_nodes[v]
    else:
        return None

Graph_nodes = {
    'A': [('B', 2), ('E', 3)],
    'B': [('A', 2), ('C', 1), ('G', 9)],
    'C': [('B', 1)],
    'D': [('E', 6), ('G', 1)],
    'E': [('A', 3), ('D', 6)],
    'G': [('B', 9), ('D', 1)]
}

ucs('A', 'G')
