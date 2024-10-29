#include <Eigen/Dense>
#include <iostream>
#include <type_traits>

using namespace Eigen;

template <typename T>
void matrixOperations() {
    static_assert(std::is_arithmetic<T>::value, "Template parameter must be an arithmetic type.");

    Matrix<T, Dynamic, Dynamic> matA = Matrix<T, Dynamic, Dynamic>::Random(3, 3);
    Matrix<T, Dynamic, Dynamic> matB = Matrix<T, Dynamic, Dynamic>::Random(3, 3);

    std::cout << "Matrix A:\n" << matA << std::endl;
    std::cout << "Matrix B:\n" << matB << std::endl;

    // 矩阵乘法
    Matrix<T, Dynamic, Dynamic> matC = matA * matB;
    std::cout << "Matrix A * B:\n" << matC << std::endl;

    // 逐元素加法
    Matrix<T, Dynamic, Dynamic> sumMat = matA + matB;
    std::cout << "Element-wise Addition (A + B):\n" << sumMat << std::endl;

    // 逐元素减法
    Matrix<T, Dynamic, Dynamic> diffMat = matA - matB;
    std::cout << "Element-wise Subtraction (A - B):\n" << diffMat << std::endl;

    // 逐元素乘法
    Matrix<T, Dynamic, Dynamic> prodMat = matA.array() * matB.array();
    std::cout << "Element-wise Multiplication (A * B):\n" << prodMat << std::endl;

    // 逐元素除法（仅适用于浮点类型）
    if constexpr (std::is_floating_point<T>::value) {
        Matrix<T, Dynamic, Dynamic> divMat = matA.array() / matB.array();
        std::cout << "Element-wise Division (A / B):\n" << divMat << std::endl;
    } else {
        std::cout << "Element-wise Division is not supported for integer types.\n";
    }

    // 逐元素最小值
    Matrix<T, Dynamic, Dynamic> minMat = matA.array().min(matB.array());
    std::cout << "Element-wise Minimum (min(A, B)):\n" << minMat << std::endl;

    // 逐元素最大值
    Matrix<T, Dynamic, Dynamic> maxMat = matA.array().max(matB.array());
    std::cout << "Element-wise Maximum (max(A, B)):\n" << maxMat << std::endl;

    // 矩阵转置
    Matrix<T, Dynamic, Dynamic> transposedMat = matA.transpose();
    std::cout << "Transpose of A:\n" << transposedMat << std::endl;

    // 矩阵的逆（仅适用于浮点类型）
    if constexpr (std::is_floating_point<T>::value) {
        if (matA.rows() == matA.cols()) { // 仅当矩阵为方阵时才求逆
            T det = matA.determinant();
            if (det != 0) { // 确保矩阵是可逆的
                Matrix<T, Dynamic, Dynamic> invMat = matA.inverse();
                std::cout << "Inverse of A:\n" << invMat << std::endl;
            } else {
                std::cout << "Matrix A is not invertible." << std::endl;
            }
        }
    } else {
        std::cout << "Matrix inversion is not supported for integer types.\n";
    }

    // 特征值和特征向量
    Eigen::EigenSolver<Matrix<T, Dynamic, Dynamic>> es(matA);
    auto eigenValues = es.eigenvalues().real();
    auto eigenVectors = es.eigenvectors().real();
    std::cout << "Eigenvalues of A:\n" << eigenValues << std::endl;

    // 矩阵的行列式
    std::cout << "Determinant of A: " << matA.determinant() << std::endl;

    // 矩阵的迹
    T trace = matA.trace();
    std::cout << "Trace of A: " << trace << std::endl;

    // 矩阵的平均值
    T mean = matA.mean();
    std::cout << "Mean of A: " << mean << std::endl;

    // 归一化矩阵（仅适用于浮点类型）
    if constexpr (std::is_floating_point<T>::value) {
        Matrix<T, Dynamic, Dynamic> normMat = (matA.array() - matA.mean()) / matA.array().abs().maxCoeff();
        std::cout << "Normalized Matrix A:\n" << normMat << std::endl;
    } else {
        std::cout << "Normalization is not supported for integer types.\n";
    }

    // 缩放矩阵
    T scale = static_cast<T>(2.0);
    Matrix<T, Dynamic, Dynamic> scaledMat = scale * matA;

    // 逐元素平方
    Matrix<T, Dynamic, Dynamic> squaredMat = matA.array().square();
    std::cout << "Element-wise Square of A:\n" << squaredMat << std::endl;

    // 逐元素平方根
    Matrix<T, Dynamic, Dynamic> sqrtMat = matA.array().sqrt();
    std::cout << "Element-wise Square Root of A:\n" << sqrtMat << std::endl;

    // 逐元素对数（仅适用于浮点类型）
    if constexpr (std::is_floating_point<T>::value) {
        Matrix<T, Dynamic, Dynamic> logMat = matA.array().log();
        std::cout << "Element-wise Log of A:\n" << logMat << std::endl;
    } else {
        std::cout << "Element-wise Logarithm is not supported for integer types.\n";
    }

    // 逐元素指数
    Matrix<T, Dynamic, Dynamic> expMat = matA.array().exp();
    std::cout << "Element-wise Exponential of A:\n" << expMat << std::endl;

    // 逐元素绝对值
    Matrix<T, Dynamic, Dynamic> absMat = matA.array().abs();
    std::cout << "Element-wise Absolute Value of A:\n" << absMat << std::endl;

    // 提取特定行或列
    Matrix<T, 1, Dynamic> rowVec = matA.row(0); // 提取第一行
    Matrix<T, Dynamic, 1> colVec = matA.col(0); // 提取第一列
    std::cout << "First Row of A:\n" << rowVec << std::endl;
    std::cout << "First Column of A:\n" << colVec << std::endl;

    // 连接矩阵
    Matrix<T, Dynamic, Dynamic> concatenated = (matA.transpose() << matB.transpose()).finished();
    std::cout << "Concatenated Matrix:\n" << concatenated << std::endl;
}

int main() {
    std::cout << "Testing with double type:\n";
    matrixOperations<double>();  // 测试浮点类型
    std::cout << "\nTesting with float type:\n";
    matrixOperations<float>();    // 测试浮点类型
    return 0;
}

