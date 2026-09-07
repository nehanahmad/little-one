# Little One - Project Overview

**Project Type:** Godot 4.7 Turn-Based Battle System Game  
**Current State:** Early Development - Core battle mechanics implemented  
**Engine:** Godot Engine 4.7 (GL Compatibility rendering)  
**Display:** 1920x1080 viewport

---

## 📁 Directory Structure


```text
little-one/
├── assets/                              # Game assets
│   └── Battle System/                   # Assets used by the battle system
│       ├── Fonts/                       # Fonts used throughout the game
│       │   ├── CloisterBlack.ttf        # Gothic-style font used for UI/text
│       │   ├── LiberationSans.ttf       # General-purpose sans-serif font
│       │   └── PixelifySans-VariableFont_wght 1.ttf
│       │                                    # Pixel-style font used for game UI
│       │
│       ├── Music/                       # Music and sound effects
│       │   └── oskarsiljins-danger-situation-sound-effect-15635.mp3
│       │                                    # Battle danger/situation sound effect
│       │
│       ├── Scripts/                     # Scripts associated with battle assets
│       │
│       ├── UI Elements/                 # Battle UI graphics, backgrounds and effects
│       │   ├── 514344146_655766624138525_2785643504047533295_n.jpg
│       │   │                                # UI/reference image
│       │   ├── 600px-Dungeon_background.png
│       │   │                                # Dungeon battle background
│       │   ├── abstract-geometric-background-shapes-texture_1194-301824.png
│       │   │                                # Abstract background texture
│       │   ├── BarBorder.psd             # Editable source file for bar UI
│       │   ├── BattleStation.png         # Player battle/stance area
│       │   ├── Battlestation2.png        # Alternate battle station design
│       │   ├── BattleStation3.png        # Alternate battle station design
│       │   ├── BattleStation4.png        # Alternate battle station design
│       │   ├── foolsGuard.png            # Fool's Guard stance icon
│       │   ├── healthbar.png             # Health bar UI element
│       │   ├── healthRed.png             # Red health/damage indicator
│       │   ├── heartfolklore2.png        # Decorative health-related graphic
│       │   ├── hearticon.png             # Health icon
│       │   ├── miasmaPurple.png          # Purple miasma/status effect bar
│       │   ├── plowShort.png             # Plow Short stance icon
│       │   ├── Ragnvaldr_(Player).gif    # Animated player reference/graphic
│       │   ├── roofStance.png            # Roof Stance icon
│       │   ├── roofStance1.png           # Alternate Roof Stance graphic
│       │   ├── stamina.png               # Stamina indicator
│       │   ├── staminaYellow.png         # Yellow stamina bar
│       │   ├── wasd photo.jpg            # WASD control/reference image
│       │   ├── WhatsApp Image 2026-01-18 at 6.15.34 PM.png
│       │   │                                # UI/reference image
│       │   └── Keyboard_Keys/             # Individual keyboard key graphics
│       │       ├── A_key.png              # A key graphic
│       │       ├── D_key.png              # D key graphic
│       │       ├── S_key.png              # S key graphic
│       │       └── W_key.png              # W key graphic
│       │
│       └── Units Images/                 # Character and enemy artwork
│           ├── Jevil Sprites/            # Individual Jevil animation frames
│           │   ├── frame_00_delay-0.05s.png
│           │   ├── frame_01_delay-0.05s.png
│           │   ├── ...
│           │   └── frame_12_delay-0.05s.png
│           │
│           ├── Ragnvaldr Sprites/        # Individual Ragnvaldr animation frames
│           │   ├── frame_0_delay-0.3s.gif
│           │   ├── frame_0_delay-0.3s.png
│           │   ├── frame_1_delay-0.3s.gif
│           │   ├── frame_1_delay-0.3s.png
│           │   └── frame_2_delay-0.3s.png
│           │
│           ├── Jevil Sprites.png         # Jevil sprite sheet/artwork
│           ├── Jevil Sprites(1).png      # Alternate Jevil sprite artwork
│           ├── PC _ Computer - Deltarune - Enemies & Bosses - Jevil.png
│           │                                # Jevil reference artwork
│           └── Uniform.png               # Character uniform artwork
│
├── src/                                  # Core game logic, scenes and data
│   ├── Abel State Files/                 # Abel's state and appearance system
│   │   ├── abel's_appearance.gd          # Handles Abel's appearance data
│   │   ├── Abel_Appearances.tres         # Abel's available appearance configurations
│   │   └── state.gd                      # Global game state management
│   │
│   ├── Battle System Files/              # Core battle system scripts and resources
│   │   ├── abel_stats.tres               # Abel's combat statistics
│   │   ├── attack_data.gd                # Attack data resource class
│   │   ├── battle.gd                     # Main battle controller and battle logic
│   │   ├── battle.tscn                   # Main battle scene
│   │   ├── CombatantStats.gd             # Base statistics system for combatants
│   │   ├── enemy.gd                      # Enemy display and behaviour controller
│   │   ├── enemy.tscn                    # Enemy scene
│   │   ├── enemy_data.gd                 # Enemy data resource class
│   │   ├── Motley.tres                   # Motley enemy configuration/data
│   │   ├── stance_data.gd                # Stance data resource class
│   │   └── StanceData/                   # Individual stance configurations
│   │       ├── idle.tres                 # Default/idle stance
│   │       ├── Fool's Guard.tres         # Fool's Guard stance configuration
│   │       ├── Plow Short.tres           # Plow Short stance configuration
│   │       ├── Prism Stance.tres         # Prism Stance configuration
│   │       └── Roof Stance.tres          # Roof Stance configuration
│   │
│   ├── SpriteFrames/                     # Sprite animation frame resources
│   │   ├── Abel_Sprite_Frames.tres       # Abel's sprite animation frames
│   │   └── Motley_Sprite.tres            # Motley's sprite animation frames
│   │
│   ├── abel.gd                            # Abel's 3D character controller
│   ├── exploration.gd                     # Overworld/exploration scene manager
│   └── exploration.tscn                   # Exploration/overworld 3D scene
│
├── project.godot                         # Godot project configuration
├── icon.svg                              # Project icon
└── .gitignore                            # Files and directories excluded from Git

```

---

## 🎮 Game Systems Overview

### Exploration System (NEW)
**Files:** [src/exploration.gd](src/exploration.gd), [src/exploration.tscn](src/exploration.tscn), [src/abel.gd](src/abel.gd)

The game features a 3D overworld exploration mode:
- **Abel Character:** 3D CharacterBody3D with WASD/Arrow movement at 5 units/second
- **Animation System:** "walk" animation plays during movement, "default" (idle) plays when stationary
- **Camera:** Third-person perspective positioned behind the character
- **Sprite Rendering:** Uses AnimatedSprite3D with Billboard mode for consistent 2D sprite appearance
- **Enemy Encounters:** Area3D triggers detect collision with player, transitioning to battle scenes
- **Scene Transition:** `_on_enemy_trigger_body_entered()` uses `get_tree().change_scene_to_file()` to load battles

### Core Battle Flow
**File:** [src/battle.gd](src/battle.gd)

The battle system is turn-based with the following sequence:
1. **Initialization:** Enemy and player appear with opening dialogue
2. **Player Actions:** Player can select Stance, Attack, Items, or Run
3. **Stance System:** Player switches between defensive/offensive stances with real-time descriptions
4. **Attack Selection:** Choose from up to 4 equipped attacks with live preview
5. **Enemy Response:** Enemy stance changes with dialogue (full AI not yet implemented)
6. **Outcome:** Damage applied, limb systems track break thresholds

---

## ⚙️ Core Mechanics

### 1. **Stance System**
**Files:** [src/stance_data.gd](src/stance_data.gd), [src/StanceData/](src/StanceData/)

Five stances available to both player and enemy:

| Stance | File | Purpose |
|--------|------|---------|
| **IDLE** | idle.tres | Neutral, ready state |
| **FOOL'S GUARD** | Fool's Guard.tres | Defensive stance with block mechanics |
| **PLOW SHORT** | Plow Short.tres | Balanced/versatile stance |
| **ROOF STANCE** | Roof Stance.tres | High-damage offensive stance |
| **PRISM STANCE** | Prism Stance.tres | Special stance with elemental/status effects |

**Stance Properties:**
- `display_name` - Human-readable name
- `description` - Flavor text
- `target_limb` - Which limb this stance targets (HEAD, HAND, LEG, or NONE)
- `attack_multiplier` - Damage scaling (0.5 = half damage)
- `defense_multiplier` - Defense scaling
- `miss_chance` - Dodge probability
- `is_speed_check` - Whether stance uses speed-based crit system
- `crit_chance_per_speed_point` - Crit scaling (default: 5% per speed point)
- `fail_damage_multiplier` - Increased damage if miss lands (1.5x = 50% extra)
- `builds_break` - Whether stance accumulates limb break damage

### 2. **Attack System**
**Files:** [src/attack_data.gd](src/attack_data.gd)

Attacks are data-driven resources with:
- `attack_name` - Display name
- `description` - Flavor text
- `damage_multiplier` - Damage scaling vs base attack stat
- `stamina_cost` - Resource cost to use
- `target_limb_override` - Force targeting specific limb (overrides stance)
- `has_prism_variant` - Special behavior for Prism Stance variant
- `prism_applies_status` - Status effect application
- `prism_status_effect` - Status applied (BLIGHT, PLAGUE, BLEED, ROT, WORMS)
- `prism_miasma_cost` - Miasma resource cost

**Status Effects (Future Implementation):**
- BLIGHT, PLAGUE, BLEED, ROT, WORMS - Persistent damage/debuffs

### 3. **Combatant Stats System**
**Files:** [CombatantStats.gd](CombatantStats.gd), [src/abel_stats.tres](src/abel_stats.tres), [src/Motley.tres](src/Motley.tres)

**Primary Stats:**
- `max_health` / `current_health` - HP
- `attack` - Damage output
- `defense` - Damage reduction
- `speed` - Turn order and crit chance

**Resource Pools:**
- `max_miasma` / `current_miasma` - Status/corruption resource (future use)
- `max_break` / `current_break` - Break meter (future implementation)

**Limb System - Two Breakable Limbs:**

The game features a sophisticated limb damage system with warning and break states:

| Limb | Tracking | States |
|------|----------|--------|
| **HAND** | `hand_damage_taken` | 0% → 50% (warn) → 100% (break) |
| **LEG** | `leg_damage_taken` | 0% → 50% (warn) → 100% (break) |

**Limb Break Mechanics:**
- Each limb has a `hand_break_threshold` and `leg_break_threshold`
- At 50% damage: Warning dialogue plays, `_warned` flag sets to prevent repeat warnings
- At 100% damage: Limb breaks permanently, stat penalties apply
- Once broken (`hand_lost` / `leg_lost` = true): No further damage to that limb
- `get_effective_attack()` - Returns 60% attack if hand lost
- `get_effective_speed()` - Returns 60% speed if leg lost
- Custom limb break text per enemy (default fallback text provided)

**Methods:**
- `apply_limb_damage(limb, amount)` → Returns "" (nothing), "warn", or "break"
- `get_effective_attack()` → Attack stat with hand loss penalty
- `get_effective_speed()` → Speed stat with leg loss penalty

### 4. **Player Character System**
**Files:** [src/abel's_appearance.gd](src/abel's_appearance.gd), [src/Abel_Appearances.tres](src/Abel_Appearances.tres)

Player appearance is modular and can be swapped:
```gdscript
@export var appearance_name: String = "First Look"
@export var idle_frames: SpriteFrames
@export var fools_guard_frames: SpriteFrames
@export var plow_short_frames: SpriteFrames
@export var roof_stance_frames: SpriteFrames
@export var prism_stance_frames: SpriteFrames
@export var attack_frames: SpriteFrames
```

**Current Appearance:** "Abel" (First Look) with custom sprite frames per stance

### 5. **Enemy System**
**Files:** [src/enemy_data.gd](src/enemy_data.gd), [src/enemy.gd](src/enemy.gd)

Enemies are configurable data resources:
- `enemy_name` - Display name
- `stats` - Full CombatantStats
- `possible_stances` - Array of stances available to AI
- `starting_stance` - Initial stance for battle
- `battle_start_text` - Opening dialogue
- Sprite frames for each stance
- Custom limb break dialogue (hands/legs)

**Current Enemy:** Motley (Deltarune reference - Jevil-inspired)

### 6. **Global State Manager**
**File:** [src/state.gd](src/state.gd)  
**Autoload:** Registered in `project.godot` as "State"

Persists across scenes:
```gdscript
enum Stance { IDLE, FOOLS_GURD, PLOW_SHORT, ROOF_STANCE, PRISM_STANCE }
enum Limb { NONE, HEAD, HAND, LEG }
enum StatusEffect { NONE, BLIGHT, PLAGUE, BLEED, ROT, WORMS }

var abel_stats: CombatantStats           # Player stats
var current_appearance: AbelAppearance   # Current sprite set
var starting_stance: Stance              # Default opening stance
var equipped_attacks: Array[AttackData]  # 4 attack slots (future menu)
```

**Planned Features:**
- `unlock_attack()` - For future attack unlock system

---

## 🎬 Scene Structure

### Main Battle Scene
**File:** [src/battle.tscn](src/battle.tscn)

**Scene Hierarchy:**
```
Battle (Control)
├── Background (TextureRect)
│   └── 600px-Dungeon_background.png
├── Enemy (Node2D)
│   ├── EnemySprite (AnimatedSprite2D)
│   └── [Enemy initialized with EnemyData]
├── battleStation (Sprite2D) - Player stance display
│   └── Abel (AnimatedSprite2D)
│       └── [Abel_Sprite_Frames.tres]
├── MeterBox (VBoxContainer) - Right-side stats UI
│   ├── HealthBar (ProgressBar)
│   ├── StaminaBar (ProgressBar)
│   ├── MiasmaBar (ProgressBar)
│   └── StanceStat (Container) - Current stance display
│       ├── StanceLabel (Label)
│       └── StanceIcon (TextureRect)
├── Textbox (Panel) - Dialogue box
│   └── MarginContainer/Label
├── PlayerPanel (VBoxContainer) - Main action buttons (visible by default)
│   └── Actions (Container)
│       ├── Stance Button → Shows StancePanel
│       ├── Attack Button → Shows AttackPanel
│       ├── Items Button (planned)
│       └── Run Button → Dialogue + back to PlayerPanel
├── StancePanel (Panel) - Stance selection (hidden by default)
│   └── Actions (Container)
│       ├── Fool's Guard Button
│       ├── Roof Stance Button
│       ├── Plow Short Button
│       ├── Prism Stance Button
│       ├── Idle Button (optional)
│       └── Back Button
├── AttackPanel (Panel) - Attack selection (hidden by default)
│   └── Actions (Container)
│       ├── Attack1Button - Attack4Button (4 slots, populated dynamically)
│       └── Back Button
├── DescriptorPanel (Panel) - Info display with animation (hidden by default)
│   ├── DescriptorNameLabel
│   └── DescriptorDescLabel
└── [Background and visual effects]
```

**UI Interaction Flow:**
```
PlayerPanel (visible)
	↓
[Click Stance] → StancePanel (show)
	↓
[Select Stance] → set_stance() → update_stance_display() → StancePanel (hide) → PlayerPanel (show)
	↓
[Hover Stance] → show_descriptor() with animation

PlayerPanel (visible)
	↓
[Click Attack] → populate_attack_panel() → AttackPanel (show)
	↓
[Select Attack] → [To be implemented: execute attack]
	↓
[Hover Attack] → show_descriptor() with animation
```

### Exploration Scene
**File:** [src/exploration.tscn](src/exploration.tscn)

**Scene Hierarchy:**
```
exploration (Node3D)
├── Abel (CharacterBody3D) - Player character
│   ├── Camera3D - Third-person camera (positioned behind/above)
│   ├── AnimatedSprite3D - Character sprite (billboard mode)
│   ├── CollisionShape3D (CapsuleShape3D)
│   └── [Movement handled by abel.gd physics]
├── CSGBox3D - Ground plane
│   └── [Platform/collision geometry]
└── enemyTrigger (Area3D) - Enemy spawn trigger
	├── CollisionShape3D (BoxShape3D)
	├── Sprite3D - Visual indicator
	└── [Connects body_entered → exploration._on_enemy_trigger_body_entered()]
```

**Interaction Flow:**
```
Player enters enemyTrigger collision area
	↓
_on_enemy_trigger_body_entered() checks body.name == "Abel"
	↓
get_tree().change_scene_to_file("res://src/battle.tscn")
	↓
Battle scene loads with enemy
```

---

## 📊 Data Files (.tres Resources)

### Player Data
- **abel_stats.tres** - Abel's base stats (HP, ATK, DEF, SPD)
- **Abel_Appearances.tres** - Appearance configuration with sprite sets

### Enemy Data
- **Motley.tres** - Boss/primary enemy (Jevil-themed)
  - Stats configured
  - Sprite frames for each stance
  - Custom dialogue

### Animation Data
- **Abel_Sprite_Frames.tres** - Idle animation frames
- **Motley_Sprite.tres** - Enemy animation frames

### Stance Configurations
Each `.tres` file contains StanceData resource:
- **idle.tres** - Base stance (no mods)
- **Fool's Guard.tres** - Defensive stance (DEF boost)
- **Plow Short.tres** - Balanced stance
- **Roof Stance.tres** - Offensive stance (ATK boost)
- **Prism Stance.tres** - Status/special stance (uses miasma)

---

## 🎨 Asset Breakdown

### Character Sprites
| Character | Source | Formats |
|-----------|--------|---------|
| **Abel** | Custom/Community | SpriteFrames.tres with frames per stance |
| **Motley/Jevil** | Deltarune fan art | PNG sheets + individual frames |
| **Ragnvaldr** | Art pack | PNG sprite sheets |
| **Uniform** | Generic reference | PNG base character |

### UI Assets (pixels × pixels)

**Stance/Status Bars:**
- `healthbar.png` - Health bar background
- `healthRed.png` - Health bar fill
- `staminaYellow.png` - Stamina bar fill
- `miasmaPurple.png` - Miasma/status bar fill

**Stance Icons:**
- `foolsGuard.png` - Fool's Guard icon
- `plowShort.png` - Plow Short icon
- `roofStance.png`, `roofStance1.png` - Roof Stance variants

**Battle Environment:**
- `BattleStation.png`, `Battlestation2.png`, `BattleStation3.png`, `BattleStation4.png` - Player stance display backgrounds
- `600px-Dungeon_background.png` - Battle background
- `abstract-geometric-background-shapes-texture_1194-301824.png` - Alternative background

**Indicator Icons:**
- `hearticon.png` - Health indicator
- `stamina.png` - Stamina indicator

**UI Elements:**
- `Keyboard_Keys/` - WASD key graphics for controller instructions
- Various PNG backgrounds for panels

### Fonts
- **CloisterBlack.ttf** - Decorative/headline font
- **PixelifySans-VariableFont_wght.ttf** - Pixel art font (variable weight)
- **LiberationSans.ttf** - Standard readable font

### Audio
- **oskarsiljins-danger-situation-sound-effect-15635.mp3** - Battle music/SFX

---

## 🔄 Game Flow & Mechanics

### Battle Turn Sequence

1. **Battle Initialization**
   - `battle.gd` calls `_ready()`
   - Enemy initialized with EnemyData
   - Player's starting stance set
   - Opening dialogue displayed

2. **Player Action Phase**
   - Player selects **Stance** or tries to **Run**
   - Selecting Stance shows StancePanel with 5 options
   - Selecting Run shows "You cannot run away" message (no escape currently)

3. **Stance System Execution**
   - Player's chosen stance loaded from `stance_data_map`
   - Multipliers applied to damage/defense
   - Speed check evaluated for crit chance
   - Miss chance calculated

4. **Damage Calculation** (Framework in place)
   - `attacker_attack * stance_multiplier * attack_multiplier`
   - Defender's defense reduces damage
   - Speed-based crit applies additional multiplier
   - Miss damage (fail_damage_multiplier) triggers if missed

5. **Limb System Application**
   - Damage applied to target limb via `apply_limb_damage()`
   - Warning state triggered at 50% threshold
   - Break state triggered at 100% threshold
   - Custom enemy dialogue plays
   - Stats reduced (60% ATK if hand broken, 60% SPD if leg broken)

6. **Enemy AI Turn** (To be implemented)
   - Select from `possible_stances`
   - Attack player
   - Apply damage using same system

7. **Win/Loss Condition** (To be implemented)
   - Either combatant reaches 0 HP
   - Battle ends, dialogue plays, scene transitions

---

## 🛠️ Systems Not Yet Implemented

These are planned or framework-only:

- [ ] **Full Combat Resolution** - Attack/damage calculation flow
- [ ] **Enemy AI** - Decision making for stance/attack selection
- [ ] **Stamina System** - Resource management for attacks (framework exists)
- [ ] **Miasma System** - Status effect resource (framework exists)
- [ ] **Attack Unlocking** - `State.unlock_attack()` method exists but unused
- [ ] **Status Effects** - BLIGHT, PLAGUE, BLEED, ROT, WORMS enums defined but not applied
- [ ] **Break Meter** - System skeleton exists, not integrated
- [ ] **Win/Loss Conditions** - Battle doesn't end yet
- [ ] **Additional Enemies** - Only Motley configured
- [ ] **Player Equipment Menu** - Stance/attack selection UI WIP
- [ ] **Sound Effects** - Audio file included but not connected

---

## 📝 Code Entry Points

### For Game Logic:
1. **Exploration/Overworld:** [src/exploration.gd](src/exploration.gd#L1) - Scene manager & trigger detection
2. **Player Movement:** [src/abel.gd](src/abel.gd#L1) - 3D character movement & animation
3. **Battle Controller:** [src/battle.gd](src/battle.gd#L1) - `_ready()`, `_input()`, UI management, stance/attack selection
4. **State Management:** [src/state.gd](src/state.gd#L1) - Global persistence
5. **Combat Stats:** [CombatantStats.gd](CombatantStats.gd#L1) - `apply_limb_damage()`, `get_effective_*()` methods

### For Data:
1. **Add new enemy:** Create `.tres` resource of type `EnemyData` and reference in `battle.gd`
2. **Add new stance:** Create `.tres` resource in `StanceData/` folder and add to `stance_data_list` in battle.tscn
3. **Add new attack:** Create attack data resource and add to `State.equipped_attacks` array
4. **Add appearance:** Create `.tres` resource of type `AbelAppearance` and assign to `State.current_appearance`

### For UI:
1. **Battle UI:** [src/battle.tscn](src/battle.tscn) - Main scene with all panels
2. **Battle Logic:** [src/battle.gd](src/battle.gd) - Button handlers and panel management
3. **Stance UI:** Look for `_on_stance_pressed`, `_on_fools_guard_pressed`, etc.
4. **Attack UI:** Look for `_on_attack_pressed`, `populate_attack_panel()`
5. **Descriptor:** Look for `show_descriptor()` with tweening animation

### For Scenes:
1. **Main Entry:** [src/exploration.tscn](src/exploration.tscn) - Set as main scene in project settings
2. **Battle Scene:** [src/battle.tscn](src/battle.tscn) - Loaded on enemy collision

---

## 🎯 Current State Summary

**Completed:**
- ✅ Project structure and organization
- ✅ Core data systems (Stats, Limbs, Stances, Attacks, Enemies)
- ✅ Global state management
- ✅ Full exploration system with 3D overworld
- ✅ Character movement and animation (3D)
- ✅ Enemy encounter triggers (area-based transitions to battle)
- ✅ Battle UI layout and panels
- ✅ Stance selection panel with 5 stances
- ✅ Stance icons and display updates in UI
- ✅ Stance button hover detection with descriptor preview
- ✅ Attack panel population from equipped_attacks array
- ✅ Attack selection panel (4 slots)
- ✅ Attack button hover detection with descriptor preview
- ✅ Descriptor panel with smooth slide-in animation (tweened)
- ✅ Character appearance system
- ✅ Enemy display and stance management
- ✅ Enemy stance changes with dialogue
- ✅ Limb break warning/penalty system
- ✅ Asset pipeline (sprites, fonts, audio)

**In Progress:**
- 🔄 Battle execution system (damage calculation)
- 🔄 Enemy AI and decision making
- 🔄 Attack activation and effects

**Not Started:**
- ❌ Status effect system (framework ready)
- ❌ Stamina/resource consumption
- ❌ Win/loss conditions and battle end
- ❌ Sound integration
- ❌ Animation playback during attacks
- ❌ Additional enemies beyond Motley
- ❌ Additional attacks/stances
- ❌ Items system
- ❌ Persistent progression between battles

---

## �️ UI Implementation Details

### Stance Selection System
**Functions:** `_on_stance_pressed()`, `_on_fools_guard_pressed()`, `_on_plow_short_pressed()`, etc.

- Toggles PlayerPanel visibility and shows StancePanel
- Five stance buttons with click handlers
- "Back" button returns to PlayerPanel
- Stance selection calls `set_stance()` which:
  - Updates sprite frames for the player character
  - Calls `update_stance_display()` to refresh UI labels/icons
  - Hides StancePanel and shows PlayerPanel
  - Updates `State.starting_stance` for persistence

### Stance Hover & Description Preview
**Function:** `_on_stance_button_hovered(stance: State.Stance)`

- Triggered when mouse hovers over a stance button
- Calls `show_descriptor(display_name, description)`
- Displays stance name and description in the DescriptorPanel

### Attack Selection System
**Functions:** `_on_attack_pressed()`, `populate_attack_panel()`

- `_on_attack_pressed()` shows AttackPanel and calls `populate_attack_panel()`
- `populate_attack_panel()` iterates through `State.equipped_attacks`:
  - Assigns attack name to button text
  - Shows button if attack is unlocked
  - Hides button if no attack assigned
- Supports up to 4 attacks (can extend)

### Attack Hover & Description Preview
**Function:** `_on_attack_button_hovered(index: int)`

- Triggered when mouse hovers over an attack button
- Retrieves attack from `State.equipped_attacks[index]`
- Calls `show_descriptor(attack_name, description)`

### Descriptor Panel Animation
**Function:** `show_descriptor(title: String, description: String)`

- **Offscreen Position:** x = 820 (outside viewport, slightly rotated -5°)
- **Onscreen Position:** x = 610 (visible in viewport)
- **Animation:** 0.25 second tween with BACK easing
  - Slides from right: position.x animates from 820 → 610
  - Rotates into place: rotation_degrees animates from -5° → 0°
  - Both properties animate in parallel

### Enemy Stance Change
**Function:** `change_enemy_stance(new_stance: State.Stance)`

- Updates enemy sprite via `$Enemy.set_stance()`
- Displays dialogue: "[Enemy Name] shifts to [Stance Name]"
- Hides PlayerPanel, awaits dialogue close
- Shows PlayerPanel again

---

```
battle.gd (main controller)
	├── Uses: State (global stats)
	├── References: EnemyData (Motley.tres)
	├── References: AbelAppearance (Abel_Appearances.tres)
	├── References: StanceData array (all stance .tres files)
	├── Displays: SpriteFrames (Abel & Enemy sprites)
	└── Manages: UI panels and dialogue

state.gd (global autoload)
	├── Holds: CombatantStats (abel_stats.tres)
	├── Holds: AbelAppearance (Abel_Appearances.tres)
	└── Manages: Attack unlocking system

EnemyData (Motley.tres)
	├── References: CombatantStats (enemy stats)
	├── References: SpriteFrames (all enemy stance animations)
	└── Used by: battle.gd and enemy.gd

CombatantStats (abel_stats.tres, Motley.tres)
	└── Tracks: Limb damage, breaks, effective stat penalties
```

---

## 📱 UI/UX Structure

**Main Panels (toggled visibility):**
- **Textbox** - Dialogue display (always appears with messages)
- **PlayerPanel** - Main action buttons (Stance, Attack, Run)
- **StancePanel** - 5 stance selection buttons with icons
- **AttackPanel** - 4 equipped attack buttons
- **DescriptorPanel** - Information about selected action
- **MeterBox** - Health, Stamina, Miasma bars on right side

**Navigation:**
- Press UI_ACCEPT (typically Enter/Space/Gamepad A) to advance dialogue
- Select buttons to perform actions
- Focus management with `release_focus()` and `gui_release_focus()`

---

## 🎓 For AI Developers: Quick Start

To understand and extend this project:

1. **Read in this order:**
   - `project.godot` - See main scene configuration (currently should point to exploration.tscn)
   - `src/exploration.gd` - Understand overworld → battle transition
   - `src/abel.gd` - Understand 3D character movement
   - `src/state.gd` - Understand enums and global state
   - `CombatantStats.gd` - Learn limb system and stat calculations
   - `src/stance_data.gd` - See stance attributes
   - `src/attack_data.gd` - See attack attributes
   - `src/battle.gd` - Main battle loop with UI handling

2. **Exploration → Battle Flow:**
   ```
   Player moves in exploration (abel.gd)
   → Collides with enemyTrigger Area3D
   → exploration._on_enemy_trigger_body_entered() triggers
   → get_tree().change_scene_to_file("res://src/battle.tscn")
   → battle.gd _ready() initializes enemy and UI
   → Player selects Stance via UI panel
   ```

3. **Battle UI Flow:**
   ```
   PlayerPanel shown
   → Click "Stance" → Show StancePanel with 5 options
   → Hover Stance → Show descriptor with animation
   → Click Stance → set_stance() → Update display → Hide StancePanel
   
   PlayerPanel shown
   → Click "Attack" → populate_attack_panel() → Show AttackPanel
   → Hover Attack → Show descriptor with animation
   → Click Attack → [To implement: execute attack]
   ```

4. **Key Data Flow:**
   ```
   State.equipped_attacks (array of AttackData)
   → battle.gd populate_attack_panel() loops through array
   → Creates 4 buttons with attack names
   → Hover triggers show_descriptor() with attack details
   ```

5. **To add a new enemy:**
   - Create `res://src/YourEnemyName.tres` (resource of type EnemyData)
   - Assign stats, stances, sprite frames, dialogue
   - Edit exploration.tscn: Change enemyTrigger's enemy reference (optional property in exploration.gd)
   - OR: Edit battle.tscn's `@export var enemy` property

6. **To add a new attack:**
   - Create attack data resource (AttackData type)
   - In initialization (or menu), add to `State.equipped_attacks.append(attack)`
   - Attack will appear in populated_attack_panel() when Attack button clicked
   - Implement attack handler in battle.gd to execute attack

7. **To debug:**
   - Print `State.abel_stats` variables in battle.gd
   - Check `State.equipped_attacks.size()` to verify attacks loaded
   - Check `enemy_data.possible_stances` for AI options
   - Trace `apply_limb_damage()` return values ("warn" or "break")
   - Use `battle.gd display_text()` to show debug info
   - Check explorer console for stance/attack hover triggers

---

## 🔗 Key System Interdependencies

**Complete Call Chain from Start to Battle:**
```
project.godot (main_scene = exploration.tscn)
	↓
exploration.tscn loads
	↓
exploration.gd._ready() and _process()
	├── abel.gd handles WASD input
	│   ├── Input.get_vector() gets movement
	│   ├── AnimatedSprite3D.play("walk" or "default")
	│   └── CharacterBody3D.move_and_slide()
	│
	└── enemyTrigger (Area3D) monitors for collision
		└── On collision with Abel:
			└── exploration._on_enemy_trigger_body_entered("Abel")
				└── get_tree().change_scene_to_file("res://src/battle.tscn")
					└── battle.gd._ready() executes
```

**Battle Scene Setup:**
```
battle.gd._ready()
	├── Builds stance_data_map from stance_data_list (5 stances)
	├── Initializes health display: set_health()
	├── Calls $Enemy.initialize(enemy_data)
	│   └── enemy.gd loads sprites from EnemyData
	├── Hides all panels initially
	├── Sets player to starting stance
	├── Displays opening dialogue
	└── Shows PlayerPanel
```

**UI Panel State Machine:**
```
PlayerPanel (initial state)
	├── Click Stance Button
	│   └── _on_stance_pressed()
	│       ├── Release focus
	│       ├── Hide PlayerPanel
	│       └── Show StancePanel with 5 buttons + Back
	│           └── On any stance click:
	│               ├── _on_[stance]_pressed()
	│               ├── Call set_stance()
	│               ├── Call update_stance_display()
	│               ├── Hide StancePanel
	│               └── Show PlayerPanel
	│           └── On Back click:
	│               ├── Hide StancePanel
	│               └── Show PlayerPanel
	│           └── On hover:
	│               └── _on_stance_button_hovered()
	│                   └── show_descriptor(name, description)
	│                       └── Tween animation: slide in from x=820
	│
	├── Click Attack Button
	│   └── _on_attack_pressed()
	│       ├── Hide PlayerPanel
	│       ├── Call populate_attack_panel()
	│       │   └── Loop State.equipped_attacks
	│       │       ├── Assign attack_name to button text
	│       │       └── Show/hide buttons based on unlocked attacks
	│       └── Show AttackPanel with 4 buttons + Back
	│           └── On Back click:
	│               ├── Hide AttackPanel
	│               └── Show PlayerPanel
	│           └── On hover:
	│               └── _on_attack_button_hovered(index)
	│                   └── show_descriptor(name, description)
	│
	└── Click Run Button
		└── _on_run_pressed()
			├── Hide PlayerPanel
			├── Display "You can not run away."
			└── Show PlayerPanel
```

**Data References:**
```
battle.gd
	├── @export var enemy: EnemyData → Motley.tres
	│   ├── stats: CombatantStats
	│   ├── idle_sprite: SpriteFrames
	│   ├── fools_guard_sprite: SpriteFrames
	│   ├── plow_short_sprite: SpriteFrames
	│   ├── roof_stance_sprite: SpriteFrames
	│   └── prism_stance_sprite: SpriteFrames
	│
	├── @export var stance_data_list: Array[StanceData]
	│   ├── idle.tres
	│   ├── Fool's Guard.tres
	│   ├── Plow Short.tres
	│   ├── Roof Stance.tres
	│   └── Prism Stance.tres
	│
	└── State (global)
		├── abel_stats: CombatantStats
		├── current_appearance: AbelAppearance
		│   ├── idle_frames: SpriteFrames
		│   ├── fools_guard_frames: SpriteFrames
		│   ├── plow_short_frames: SpriteFrames
		│   ├── roof_stance_frames: SpriteFrames
		│   └── prism_stance_frames: SpriteFrames
		├── starting_stance: Stance (FOOLS_GUARD by default)
		└── equipped_attacks: Array[AttackData] (currently empty, needs population)
```

**Animation & Sprite Flow:**
```
battle.gd.set_stance(stance)
	├── Matches stance enum
	├── Retrieves appearance.X_frames (e.g., fools_guard_frames)
	├── Sets $battleStation/Abel.sprite_frames = frames
	├── Plays "idle" animation
	└── Calls update_stance_display()
		├── Gets data from stance_data_map
		└── Updates StanceLabel & StanceIcon in MeterBox

enemy.gd.set_stance(stance)
	├── Gets sprite frames from enemy_data.get_stance_sprite()
	├── Sets $EnemySprite.sprite_frames = frames
	└── Plays "idle" animation
```
