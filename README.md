# intime_client

一个基于 Flutter 和 Riverpod 的生产级底部标签页应用示例。

## 项目结构

```
lib/
├── main.dart                 # 应用入口
├── pages/                    # 页面目录
│   ├── home_page.dart        # 首页
│   ├── message_page.dart     # 消息页
│   └── profile_page.dart     # 个人中心页
├── providers/                # Riverpod 状态管理
│   ├── home_provider.dart    # 首页状态
│   ├── message_provider.dart # 消息状态
│   ├── profile_provider.dart # 个人中心状态
│   └── tab_index_provider.dart # 标签页索引状态
├── tabs/                     # 标签页组件
│   ├── home_tab.dart         # 首页标签
│   ├── main_tab_page.dart    # 主标签页容器
│   ├── message_tab.dart      # 消息标签
│   └── profile_tab.dart      # 个人中心标签
```

## 功能特性

- **底部标签导航**：包含首页、消息、个人中心三个标签
- **状态管理**：使用 Riverpod 进行状态管理
- **标签页保活**：使用 `AutomaticKeepAliveClientMixin` 实现标签页状态保活
- **嵌套导航**：每个标签页内部实现独立导航栈
- **数据持久化**：标签页状态在切换时保持

## 技术栈

- Flutter 3.35.2+
- Dart 3.9.0+
- Riverpod 2.3.8
- Material Design

## 快速开始

### 环境要求

- Flutter SDK 3.35.2 或更高版本
- Dart SDK 3.9.0 或更高版本
- Android Studio/VS Code 等 IDE
- 模拟器或真实设备

### 安装依赖

```bash
flutter pub get
```

### 运行项目

```bash
# 运行在 iOS 模拟器
flutter run -d ios

# 运行在 Android 模拟器
flutter run -d android

# 运行在 Web 浏览器
flutter run -d chrome

# 运行在 Windows
flutter run -d windows

# 运行在 macOS
flutter run -d macos
```

## 项目特点

1. **生产级架构**：采用清晰的分层架构，易于维护和扩展
2. **状态管理**：使用 Riverpod 2.0 最新特性，实现高效状态管理
3. **标签页保活**：解决了 Flutter 标签页切换时状态丢失的问题
4. **嵌套导航**：每个标签页独立导航，避免了全局导航冲突
5. **响应式设计**：适配不同屏幕尺寸

## 核心功能

### 首页
- 计数器功能
- 跳转到详情页

### 消息
- 消息计数功能
- 跳转到消息详情页

### 个人中心
- 用户名显示
- 用户名修改功能
- 跳转到个人详情页

## 状态管理说明

项目使用 Riverpod 进行状态管理，主要包括：

- `tabIndexProvider`：管理当前选中的标签页索引
- `homeCountProvider`：管理首页计数器状态
- `messageCountProvider`：管理消息计数状态
- `profileNameProvider`：管理用户名状态

## 导航结构

- 全局导航：管理标签页之间的切换
- 局部导航：每个标签页内部的导航栈

## 构建发布

### Android 发布

```bash
flutter build apk --release
```

### iOS 发布

```bash
flutter build ios --release
```

### Web 发布

```bash
flutter build web --release
```

### Windows 发布

```bash
flutter build windows --release
```

### macOS 发布

```bash
flutter build macos --release
```

## 注意事项

- 本项目使用 Flutter 3.35.2 版本，可能存在 DebugService 相关的 bug，如遇到 "Error: Unsupported operation: Cannot send Null" 错误，建议升级 Flutter 到最新版本
- 开发环境建议使用 Android Studio 或 VS Code 配合 Flutter 插件
- 运行 Web 版本时，需要确保已安装 Chrome 浏览器

## 许可证

MIT License

## 贡献

欢迎提交 Issue 和 Pull Request 来改进这个项目。

## 作者

Flutter 开发者

---

**如有问题或建议，欢迎联系我们！**