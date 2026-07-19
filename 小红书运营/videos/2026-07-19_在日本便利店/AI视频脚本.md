# AI 视频脚本 ·【在日本这样说 第1期】在日本便利店

> 参照账号已验证爆款（「今天学日本餐厅对话 · 情景模拟」317赞/388藏）的形式：
> **实景 + 情景模拟 + 日语原声 + 中日双语字幕**。
> 本脚本可直接喂给 即梦 / 可灵 / Runway 生成分镜素材，再用剪映拼接。

---

## 一、基础参数

| 项目 | 设定 |
| --- | --- |
| **比例** | **9:16 竖屏**（1080×1920） |
| **总时长** | **约 63 秒**（关键：必须 >30 秒才进大流量池） |
| **风格** | **写实 + 日系电影感**。暖色调、浅景深、轻微胶片颗粒。**不要动漫、不要赛博朋克** |
| **镜头数** | 11 个（单镜头 4–8 秒，符合 AI 视频工具单次生成上限） |
| **画面基调** | 日本便利店实景，夜晚偏暖白光，干净、生活感 |
| **人物** | 女性店员（20 出头，制服+帽子）／顾客（第一人称视角为主，尽量不露正脸） |
| **配音** | 日语原声（女声，自然语速），中文不配音、只做字幕 |
| **字幕** | 日文（大）+ 罗马音（小）+ 中文（中），三行常驻底部 |

> ⚠️ **人物一致性提示**：AI 视频每次生成的人脸都会变。解决办法是
> **顾客一律用第一人称/背影/手部特写**，只让店员露脸，并且每个镜头的
> prompt 里重复同一句人物描述（下面每条 prompt 已经写死）。

---

## 二、分镜脚本（Storyboard）

| # | 时长 | 画面 | 镜头运动 | 台词/字幕 | 转场 |
| --- | --- | --- | --- | --- | --- |
| S1 | 0–4s | 夜晚便利店门口，招牌亮着，玻璃门反射街灯 | **缓慢推镜**（dolly in）向自动门 | 钩子大字：「大丈夫です」到底是要还是不要？ | 白闪 |
| S2 | 4–8s | 店内货架，手伸出拿起一个便当 | 手持微晃，跟随手部 | 无台词，字幕：便利店结账全流程 | 快切 |
| S3 | 8–14s | 收银台前，店员抬头微笑 | 中景固定，轻微呼吸感 | **いらっしゃいませ。** | 快切 |
| S4 | 14–21s | 店员指向柜台上的便当询问 | **轻推近景**至半身 | **お弁当温めますか。** | 快切 |
| S5 | 21–27s | 过肩视角，顾客点头 | 过肩固定 | **はい、お願いします。** | 叠化 |
| S6 | 27–33s | 微波炉特写，内部旋转发光，热气 | **慢动作特写** | 无台词，字幕：加熱中… | 叠化 |
| S7 | 33–40s | 店员拿起塑料袋询问 | 中景，轻微横移 | **袋はご利用ですか。** | 快切 |
| S8 | 40–47s | **重点镜头**：顾客摆手拒绝的手部特写 | **慢动作 + 轻推** | **大丈夫です。**<br>⚠️ 字幕加红：这里是"不用了"，不是"没问题" | 停顿 0.5s 再切 |
| S9 | 47–53s | 店员出示积分卡询问，顾客摇头 | 中景固定 | **ポイントカードはお持ちですか。**<br>**持っていません。** | 快切 |
| S10 | 53–58s | 收银屏特写显示 ¥520，然后拉远到全景 | **拉镜**（dolly out） | **五百二十円になります。** | 白闪 |
| S11 | 58–63s | 静帧总结屏：8 句一屏列出 | 静止，轻微缩放 | 📌 收藏起来，去日本前翻一遍 | 结束 |

---

## 三、每个镜头的 Prompt

> 中文给即梦/可灵，英文给 Runway/Sora。**通用后缀**每条都要带上，保证风格统一。

**通用风格后缀（每条 prompt 结尾都加）**
```
日系写实电影感，暖白色便利店灯光，浅景深，柔和胶片颗粒，9:16竖屏，真实生活质感，无文字
```
```
Japanese realistic cinematic style, warm convenience store lighting, shallow depth of field,
soft film grain, 9:16 vertical, natural everyday feel, no text
```

---

### S1 · 4秒 · 店门外推镜
```
夜晚日本街道，一家便利店的玻璃门和明亮招牌，暖光从店内透出，
街面有轻微反光，镜头缓慢向前推进接近自动门，画面干净安静
```
```
Night street in Japan, a convenience store with bright glass doors and glowing sign,
warm light spilling onto wet pavement, camera slowly dollies forward toward the automatic door
```
镜头运动：`缓慢推镜 / slow dolly in`

---

### S2 · 4秒 · 拿便当
```
便利店内货架前，一只手从冷藏柜里拿起一盒便当，手持镜头轻微晃动跟随手部动作，
背景货架商品丰富但虚化
```
```
Inside a convenience store, a hand picks up a bento box from the chilled shelf,
handheld camera slightly follows the hand, shelves blurred in background
```
镜头运动：`手持跟随 / handheld follow`

---

### S3 · 6秒 · 店员打招呼
```
便利店收银台后，一位二十出头的日本女店员，穿蓝白条纹制服和店帽，
抬起头微笑打招呼，中景，画面明亮温暖
```
```
Behind the counter of a Japanese convenience store, a female clerk in her early twenties
wearing a blue-and-white striped uniform and cap looks up and smiles in greeting, medium shot
```
镜头运动：`固定中景，轻微呼吸感 / static medium shot with subtle breathing motion`
> **人物锚定句**：以后每个有店员的镜头都复制这句「二十出头的日本女店员，蓝白条纹制服和店帽」。

---

### S4 · 7秒 · 问加热
```
同一位二十出头的日本女店员（蓝白条纹制服和店帽），低头指着柜台上的便当，
表情礼貌询问，镜头从中景缓慢推近到半身
```
```
The same young female clerk in blue-and-white striped uniform points at the bento box
on the counter, politely asking, camera slowly pushes in from medium to waist shot
```
镜头运动：`轻推近景 / slow push in`

---

### S5 · 6秒 · 顾客回应
```
过肩视角，从顾客肩膀后方看向店员，顾客轻轻点头，只见后脑和肩膀，
店员在画面前方微笑回应
```
```
Over-the-shoulder shot from behind the customer, customer nods slightly,
only back of head and shoulder visible, clerk smiling ahead
```
镜头运动：`过肩固定 / static over-the-shoulder`

---

### S6 · 6秒 · 微波炉加热（**情绪镜头**）
```
微波炉内部特写，便当在里面缓慢旋转，暖黄色灯光，玻璃上有一层薄薄水汽，
慢动作，画面温暖治愈
```
```
Close-up inside a microwave, a bento box slowly rotating, warm yellow light,
faint condensation on the glass, slow motion, cozy atmosphere
```
镜头运动：`慢动作特写 / slow motion close-up`

---

### S7 · 7秒 · 问袋子
```
同一位二十出头的日本女店员（蓝白条纹制服和店帽），拿起一个塑料购物袋，
略微抬手示意询问，中景，镜头轻微横向移动
```
```
The same young female clerk holds up a plastic shopping bag, raising it slightly
as she asks, medium shot, camera gently pans sideways
```
镜头运动：`轻微横移 / subtle lateral pan`

---

### S8 · 7秒 · 摆手拒绝（**全片最重要**）
```
顾客手部特写，在胸前轻轻摆手表示婉拒，动作柔和有礼，慢动作，
背景是虚化的收银台和店员
```
```
Close-up of a customer's hand gently waving in polite refusal in front of the chest,
soft courteous gesture, slow motion, blurred counter and clerk in background
```
镜头运动：`慢动作 + 轻推 / slow motion with slight push in`
> 这 7 秒是全片信息价值最高的地方，**字幕要在这里做红色强调**，剪辑上前后各留半秒静默。

---

### S9 · 6秒 · 积分卡
```
同一位二十出头的日本女店员（蓝白条纹制服和店帽），手里拿着一张积分卡询问，
对面顾客的背影轻轻摇头，中景固定
```
```
The same young female clerk holds up a point card while asking,
the customer's back visible shaking head slightly, static medium shot
```
镜头运动：`固定中景 / static medium`

---

### S10 · 5秒 · 结账拉镜
```
收银机显示屏特写，显示金额数字，随后镜头缓缓拉远，露出整个收银台和店员，
暖色灯光，画面收束
```
```
Close-up of the register display showing the total, then camera slowly dollies out
revealing the whole counter and clerk, warm lighting
```
镜头运动：`拉镜 / dolly out`

---

### S11 · 5秒 · 总结屏
**不要用 AI 生成**，用剪映做静态图：浅青渐变底，8 句竖排列出，顶部写「📌 收藏起来」。
（也可以直接截 `03_动画.html` 最后那张总结屏。）

---

## 四、台词（日语原声 · 按顺序）

| # | 日文 | 罗马音 | 中文 |
| --- | --- | --- | --- |
| 1 | いらっしゃいませ。 | irasshaimase | 欢迎光临。 |
| 2 | お弁当温めますか。 | obentou atatamemasu ka | 便当需要加热吗？ |
| 3 | はい、お願いします。 | hai, onegai shimasu | 好的，麻烦了。 |
| 4 | 袋はご利用ですか。 | fukuro wa goriyou desu ka | 需要袋子吗？ |
| 5 | 大丈夫です。 | daijoubu desu | **不用了。（⚠️不是"没问题"）** |
| 6 | ポイントカードはお持ちですか。 | pointo kaado wa omochi desu ka | 有积分卡吗？ |
| 7 | 持っていません。 | motte imasen | 没有。 |
| 8 | 五百二十円になります。 | gohyaku nijuu en ni narimasu | 一共520日元。 |

**配音方式（二选一）**
- **A（推荐）**：日语 TTS 女声，语速 0.9 倍。剪映「AI 配音」里选日语音色，或用 macOS 的 Kyoko
- **B**：你自己录日语。真人声更有人设，但要求发音稳

**店员的句子用敬语语调（上扬、轻快），顾客的句子平稳。** 两个角色最好用不同音色区分。

---

## 五、配音文案（中文口播，可选）

如果想加中文旁白，只在这三处开口，其余留给日语原声：

- **开头（0–4s）**
  > "在日本便利店，店员问你要不要袋子，你说『大丈夫です』——你到底拿到袋子了没有？"

- **S8 之后（47s 处）**
  > "『大丈夫です』在这里是婉拒，意思是不用了。想要袋子，得说『お願いします』。"

- **结尾（58–63s）**
  > "这八句背下来，便利店就能横着走了。你还想看哪个场景？"

---

## 六、BGM 建议

| 项目 | 建议 |
| --- | --- |
| 曲风 | **日系 Lo-fi / City Pop 轻快版**，钢琴或电钢为主，无人声 |
| BPM | 70–90（跟对话节奏，不要太快） |
| 音量 | **-18dB 到 -20dB**，人声必须压过 BGM |
| 剪映搜索词 | 「日系 治愈」「便利店 lofi」「日本 街头 轻快」 |
| 变化点 | S8（大丈夫です）**BGM 降到 -28dB 或直接静音 0.5 秒**，让重点句突出 |
| 结尾 | 最后 3 秒淡出 |

> 音效点缀（剪映音效库）：S1 自动门「ピンポーン」提示音、S6 微波炉「叮」、S10 收银机扫码声。
> **这三个音效对"日本感"的贡献超过画面**，不要省。

---

## 七、转场设计

| 位置 | 转场 | 理由 |
| --- | --- | --- |
| S1 → S2 | **白闪 0.2s** | 开场提神，切进店内 |
| S2 → S3 → S4 | **硬切** | 对话节奏要快，别用花哨转场 |
| S5 → S6 → S7 | **叠化 0.4s** | 加热等待有时间流逝感 |
| S7 → S8 | **硬切 + 前后各留 0.5s 静默** | 重点句要"顿"一下 |
| S9 → S10 | **硬切** | |
| S10 → S11 | **白闪 0.3s** | 从实景切到总结图，做视觉分段 |

> 原则：**全片只用硬切、叠化、白闪三种。** 旋转、翻页、故障风都会显得廉价。

---

## 八、字幕规范

```
┌──────────────────────┐
│                       │
│      （画面区）        │
│                       │
│  ┌─────────────────┐  │
│  │ 店员            │  │ ← 说话人小标签
│  │ お弁当温めますか。 │  │ ← 日文，最大，白字黑描边
│  │ obentou atatamemasu ka │ ← 罗马音，小，浅黄
│  │ 便当需要加热吗？    │  │ ← 中文，中等，白字
│  └─────────────────┘  │
└──────────────────────┘
```

- 位置：底部往上约 22%（避开小红书的点赞/评论按钮遮挡区）
- 日文 **白字 + 3px 黑描边**，任何背景上都看得清
- **中文比日文晚 0.4 秒出现** —— 给观众一个"猜一下"的瞬间，实测能拉完播
- S8 的中文「不用了」标红加粗，旁边加一行小字「不是"没问题"」
- 说话人标签：店员=青绿底，顾客=橘底，固定不变

---

## 九、封面

用 `xhs-daily-video/assets/cover_maker.html` 生成，或直接截 S1 的画面加字：

- 主标题：**说「大丈夫です」到底是要还是不要？**
- 副行：`▸ 便利店结账 8 句全给你`
- 左上角：`在日本这样说 · 第1期`
- 背景：S1 的便利店夜景截图 + 压暗

---

## 十、生成与剪辑流程

1. **逐条把上面的 prompt 丢进即梦/可灵**，每条生成 2–3 版挑最好的
   （AI 视频废片率很高，做好一条镜头试 3 次的心理准备）
2. 导进剪映，按分镜表的时长裁剪拼接
3. 加日语配音（AI 配音或自录）→ 对齐口型不用强求，字幕对齐即可
4. 加字幕（按第八节规范）
5. 加 BGM + 三个音效，S8 处把 BGM 压低
6. 导出 1080×1920，30fps
7. 封面单独出图，发布时手动上传（**不要用视频抽帧当封面**）

---

## 十一、配套物料

- 标题 / 正文 / 标签 / 评论话术 / 发布时间 → 见同目录 `02_文案.md`
- 如果懒得跑 AI 生成，直接录屏 `03_动画.html`（按 A 自动播放）也能出片
