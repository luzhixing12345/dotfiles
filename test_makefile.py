import os
import subprocess
import unittest
from pathlib import Path


PROJECT_ROOT = Path(__file__).parent.resolve()

class TestBuild(unittest.TestCase):

    def run_make(self, DEFAULT_TARGETS="all", build_path="build"):
        """统一封装 make 调用"""
        cmd = ["make", f"DEFAULT_TARGETS={DEFAULT_TARGETS}", f"BUILD_PATH={build_path}"]
        result = subprocess.run(
            cmd,
            cwd=PROJECT_ROOT,
            stdout=subprocess.PIPE,
            stderr=subprocess.PIPE,
            text=True,
        )
        return result

    def make_clean(self):
        """调用 make clean 清理构建产物"""
        cmd = ["make", "clean"]
        subprocess.run(cmd, cwd=PROJECT_ROOT)

    def test_build_all(self):
        result = self.run_make("all", "build")

        self.assertEqual(result.returncode, 0, msg=f"make failed:\n{result.stderr}")
        self.assertTrue(os.path.isdir(PROJECT_ROOT/"build"), msg="build/ directory not found")
        self.assertTrue(os.path.isfile(PROJECT_ROOT/"build"/"main"), msg="build/main not found")
        self.assertFalse(os.path.isdir(PROJECT_ROOT/"build"/"lib"), msg="build/lib directory should not exist")
        self.assertFalse(os.path.isdir(PROJECT_ROOT/"build"/"include"), msg="build/include directory should not exist")
        self.make_clean()
        
    def test_build_lib(self):
        result = self.run_make("lib", "build")

        self.assertEqual(result.returncode, 0, msg=f"make failed:\n{result.stderr}")
        self.assertTrue(os.path.isdir(PROJECT_ROOT/"build"), msg="build/ directory not found")
        self.assertFalse(os.path.isfile(PROJECT_ROOT/"build"/"main"), msg="build/main should not exist when building lib only")
        self.assertTrue(os.path.isdir(PROJECT_ROOT/"build"/"lib"), msg="build/lib directory not found")
        self.assertTrue(os.path.isfile(PROJECT_ROOT/"build"/"lib"/"libmain.a"), msg="build/lib/libmain.a not found")
        self.assertTrue(os.path.isfile(PROJECT_ROOT/"build"/"lib"/"libmain.so"), msg="build/lib/libmain.so not found")
        self.assertTrue(os.path.isdir(PROJECT_ROOT/"build"/"include"), msg="build/include directory should exist")
        self.assertTrue(os.path.isfile(PROJECT_ROOT/"build"/"include"/"add.h"), msg="build/include/add.h not found")
        self.make_clean()
        
    def test_build_all_lib(self):
        result = self.run_make("all lib", "build")

        self.assertEqual(result.returncode, 0, msg=f"make failed:\n{result.stderr}")
        self.assertTrue(os.path.isdir(PROJECT_ROOT/"build"), msg="build/ directory not found")
        self.assertFalse(os.path.isfile(PROJECT_ROOT/"build"/"main"), msg="build/main should not exist when building lib only")
        self.assertTrue(os.path.isdir(PROJECT_ROOT/"build"/"lib"), msg="build/lib directory not found")
        self.assertTrue(os.path.isfile(PROJECT_ROOT/"build"/"lib"/"libmain.a"), msg="build/lib/libmain.a not found")
        self.assertTrue(os.path.isfile(PROJECT_ROOT/"build"/"lib"/"libmain.so"), msg="build/lib/libmain.so not found")
        self.assertTrue(os.path.isdir(PROJECT_ROOT/"build"/"include"), msg="build/include directory should exist")
        self.assertTrue(os.path.isfile(PROJECT_ROOT/"build"/"include"/"add.h"), msg="build/include/add.h not found")
        self.make_clean()


if __name__ == "__main__":
    unittest.main(verbosity=2)
