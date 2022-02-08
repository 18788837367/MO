#ifndef SHADER_H
#define SHADER_H

#include "glad/glad.h"

class Shader {
public:
    Shader(const GLchar* vertexPath, const GLchar* fragmentPath);

    void use();
    void setBool(const std::string& name, bool value) const;
    void setFloat(const std::string& name, float value) const;
    void setInt(const std::string& name, int value) const;

private:
    void checkCompileErrors(unsigned int shader, std::string type);
private:
    unsigned int m_ID;
};


#endif