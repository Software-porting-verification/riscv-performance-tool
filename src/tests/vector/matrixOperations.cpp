#include <Eigen/Dense>
#include <iostream>

using namespace Eigen;

void matrixOperations() {
    MatrixXd matA = MatrixXd::Random(3, 3);
    MatrixXd matB = MatrixXd::Random(3, 3);

    std::cout << "Matrix A:\n" << matA << std::endl;
    std::cout << "Matrix B:\n" << matB << std::endl;

    // 矩阵乘法
    MatrixXd matC = matA * matB;
    std::cout << "Matrix A * B:\n" << matC << std::endl;

    // 逐元素加法
    MatrixXd sumMat = matA + matB;
    std::cout << "Element-wise Addition (A + B):\n" << sumMat << std::endl;

    // 逐元素减法
    MatrixXd diffMat = matA - matB;
    std::cout << "Element-wise Subtraction (A - B):\n" << diffMat << std::endl;

    // 逐元素乘法
    MatrixXd prodMat = matA.array() * matB.array();
    std::cout << "Element-wise Multiplication (A * B):\n" << prodMat << std::endl;

    // 逐元素除法
    MatrixXd divMat = matA.array() / matB.array();
    std::cout << "Element-wise Division (A / B):\n" << divMat << std::endl;

    // 逐元素最小值
    MatrixXd minMat = matA.array().min(matB.array());
    std::cout << "Element-wise Minimum (min(A, B)):\n" << minMat << std::endl;

    // 逐元素最大值
    MatrixXd maxMat = matA.array().max(matB.array());
    std::cout << "Element-wise Maximum (max(A, B)):\n" << maxMat << std::endl;

    // 矩阵转置
    MatrixXd transposedMat = matA.transpose();
    std::cout << "Transpose of A:\n" << transposedMat << std::endl;

    // 矩阵的逆
    double det = matA.determinant();
    if (det != 0) { // 确保矩阵是可逆的
        MatrixXd invMat = matA.inverse();
        std::cout << "Inverse of A:\n" << invMat << std::endl;
    } else {
        std::cout << "Matrix A is not invertible." << std::endl;
    }

    // 矩阵的共轭 
    MatrixXcd conjMat = matA.conjugate();
    std::cout << "conjMat of A: " << conjMat << std::endl;
    
    // 特征值和特征向量
    Eigen::EigenSolver<MatrixXd> es(matA);
    VectorXd eigenValues = es.eigenvalues().real();
    MatrixXd eigenVectors = es.eigenvectors().real();

   
    // 矩阵的行列式
    std::cout << "Determinant of A: " << det << std::endl;
    
    // 矩阵的迹
    double trace = matA.trace();
    std::cout << "Trace of A: " << trace << std::endl;

    // 矩阵的平均值   
    double mean = matA.mean();
    
    // 矩阵的标准差
    double stddev = std::sqrt((matA.array() - mean).square().mean()); 
    
    // 归一化矩阵
    MatrixXd normMat = (matA.array() - matA.mean()) / matA.array().abs().maxCoeff();
    std::cout << "Normalized Matrix A:\n" << normMat << std::endl;

    // 缩放矩阵
    double scale = 2.0;
    MatrixXd scaledMat = scale * matA;
    
    // 逐元素平方
    MatrixXd squaredMat = matA.array().square();
    // 逐元素平方根
    MatrixXd sqrtMat = matA.array().sqrt();
    std::cout << "Element-wise Square Root of A:\n" << sqrtMat << std::endl;
    // 逐元素对数
    MatrixXd logMat = matA.array().log();

    // 逐元素指数
    MatrixXd expMat = matA.array().exp();
    // 逐元素绝对值
    MatrixXd absMat = matA.array().abs();
    std::cout << "Element-wise Absolute Value of A:\n" << absMat << std::endl;

    matA.fill(1.0);
   
    // 提取特定行或列
    VectorXd rowVec = matA.row(0); // 提取第一行
    VectorXd colVec = matA.col(0); // 提取第一列

    // 连接矩阵
    MatrixXd concatenated = (matA.transpose() << matB.transpose()).finished(); 
}

int main() {
    matrixOperations();
    return 0;
}

