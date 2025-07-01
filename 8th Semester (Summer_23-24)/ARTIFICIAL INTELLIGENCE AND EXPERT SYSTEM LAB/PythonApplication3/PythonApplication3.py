def is_safe(board, row, col, N):
    # Check this row on the left side
    for i in range(col):
        if board[row][i] == 1:
            return False

    # Check upper diagonal on the left side
    for i, j in zip(range(row, -1, -1), range(col, -1, -1)):
        if board[i][j] == 1:
            return False

    # Check lower diagonal on the left side
    for i, j in zip(range(row, N), range(col, -1, -1)):
        if board[i][j] == 1:
            return False

    return True

def solve_n_queens(board, col, N):
    # Base case: If all queens are placed, return True
    if col >= N:
        return True

    # Consider this column and try placing the queen in all rows one by one
    for i in range(N):
        if is_safe(board, i, col, N):
            # Place the queen
            board[i][col] = 1

            # Recur to place the rest of the queens
            if solve_n_queens(board, col + 1, N):
                return True

            # If placing queen in board[i][col] doesn't lead to a solution, backtrack
            board[i][col] = 0

    # If the queen cannot be placed in any row in this column, return False
    return False

def print_board(board, N):
    for i in range(N):
        for j in range(N):
            print("Q" if board[i][j] == 1 else ".", end=" ")
        print()

def n_queens(N):
    # Initialize the board
    board = [[0] * N for _ in range(N)]

    if solve_n_queens(board, 0, N):
        print_board(board, N)
    else:
        print("No solution exists")

# Example usage:
N = 8  # Size of the chessboard
n_queens(N)