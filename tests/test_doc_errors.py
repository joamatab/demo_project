if __name__ == "__main__":
    from demo_project.config import PATH

    dirpath = PATH.repo / "docs" / "build" / "html" / "reports"
    assert not dirpath.glob("*err.log")
