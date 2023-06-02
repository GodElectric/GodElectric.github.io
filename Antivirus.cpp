#include <iostream>
#include <string>
#include <vector>

// Seznam známých škodlivých souborů
std::vector<std::string> knownMalwareFiles = {
    "virus.exe",
    "malware.dll",
    "trojan.docx"
};

bool isFileMalware(const std::string& filename) {
    for (const std::string& malwareFile : knownMalwareFiles) {
        if (filename == malwareFile) {
            return true;
        }
    }
    return false;
}

int main() {
    std::string filename;
    std::cout << "Zadejte název souboru ke kontrole: ";
    std::cin >> filename;

    if (isFileMalware(filename)) {
        std::cout << "Soubor byl identifikován jako malware." << std::endl;
    } else {
        std::cout << "Soubor je bezpečný." << std::endl;
    }

    return 0;
}
