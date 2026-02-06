# Guia: Como Gerar o App Android (APK/AAB)

Preparei todo o projeto para se tornar um aplicativo Android nativo usando **Capacitor**.
A pasta `android` já contém o projeto configurado com ícones e o código do site.

## 1. Pré-requisitos
Você precisa ter o **Android Studio** instalado. Se não tiver:
1. Baixe em: [developer.android.com/studio](https://developer.android.com/studio)
2. Instale e abra-o.

## 2. Abrir o Projeto
1. Abra o Android Studio.
2. Clique em **Open**.
3. Navegue até a pasta do projeto:
   `C:\Users\pichau\Desktop\SS1\VulnScanner\dramy\android`
4. Selecione a pasta `android` e clique em OK.
5. Aguarde o Android Studio sincronizar o Gradle (pode demorar uns minutos na primeira vez).

## 3. Testar no Emulador (Opcional)
1. No topo, selecione um emulador (ex: Pixel).
2. Clique no botão de **Play (▶️)** verde.
3. O app deve abrir no celular virtual.

## 4. Gerar o Aplicativo Final (Para Play Store)
Para publicar na Play Store, você precisa gerar um **Android App Bundle (.aab)** assinado.

1. No menu superior, vá em **Build > Generate Signed Bundle / APK**.
2. Escolha **Android App Bundle** e clique em Next.
3. Em **Key store path**, você precisará criar uma chave se não tiver:
   - Clique em **Create new...**
   - Escolha onde salvar o arquivo `.jks` (guarde-o MUITO bem, sem ele você perde o app).
   - Defina as senhas e preencha o formulário (Organização, País, etc).
4. Siga em frente, escolha **Release** e finalize.
5. O Android Studio vai gerar o arquivo `.aab`. Esse é o arquivo que você sobe no Google Play Console.

## 5. Comandos Úteis (No Terminal)
Sempre que você atualizar o código do site (React), rode estes comandos para atualizar o App Android:

```powershell
# 1. Compilar o site novo
npm run build

# 2. Sincronizar com o Android
npx cap sync
```

Depois disso, basta gerar uma nova build no Android Studio.

## 6. Permissions
O app já tem permissão de Internet padrão. Se precisar de câmera ou outros recursos, edite:
`android/app/src/main/AndroidManifest.xml`.
