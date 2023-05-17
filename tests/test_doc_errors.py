if __name__ == "__main__":
    from demo_project.config import PATH

    dirpath = PATH.repo / "docs" / "_build" / "html" / "reports"
    error_files = list(dirpath.glob("*err.log"))

    if error_files:
        for error_file in error_files:
            error = error_file.read_text()
            print(error)
        raise ValueError(f"{len(error_files)} errors in notebooks")
