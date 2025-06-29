def dfs(graph, start):
    stack = [start]
    path = []

    while stack:    
        v = stack.pop() 
        if v not in path: 
            path.append(v) 
            for neighbor in reversed(graph[v]):
                stack.append(neighbor)

    return path

if __name__ == '__main__':
    graph = {'A': ['B', 'C', 'D'],
             'B': ['E'],
             'C': ['F', 'G'],
             'D': ['H'],
             'E': ['I'],
             'F': ['J'],
             'G': [],
             'H': [],
             'I': [],
             'J': []}
    print('dfs: ', dfs(graph, 'A'))
