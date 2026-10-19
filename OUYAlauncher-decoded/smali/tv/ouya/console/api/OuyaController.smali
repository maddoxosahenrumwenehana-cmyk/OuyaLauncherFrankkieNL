.class public Ltv/ouya/console/api/OuyaController;
.super Ljava/lang/Object;
.source "OuyaController.java"


# static fields
.field private static AVAILABLE_AXES:[I = null

.field public static final AXIS_L2:I = 0x11

.field public static final AXIS_LS_X:I = 0x0

.field public static final AXIS_LS_Y:I = 0x1

.field public static final AXIS_R2:I = 0x12

.field public static final AXIS_RS_X:I = 0xb

.field public static final AXIS_RS_Y:I = 0xe

.field public static final BUTTON_A:I = 0x61

.field public static final BUTTON_DPAD_DOWN:I = 0x14

.field public static final BUTTON_DPAD_LEFT:I = 0x15

.field public static final BUTTON_DPAD_RIGHT:I = 0x16

.field public static final BUTTON_DPAD_UP:I = 0x13

.field public static final BUTTON_L1:I = 0x66

.field public static final BUTTON_L2:I = 0x68
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BUTTON_L3:I = 0x6a

.field public static final BUTTON_MENU:I = 0x52

.field public static final BUTTON_O:I = 0x60

.field public static final BUTTON_R1:I = 0x67

.field public static final BUTTON_R2:I = 0x69
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final BUTTON_R3:I = 0x6b

.field public static final BUTTON_U:I = 0x63

.field public static final BUTTON_Y:I = 0x64

.field private static final EXTRA_OUYA_CONTROLLER_DEVICE_ID:Ljava/lang/String; = "DEVICE_ID"

.field private static final EXTRA_OUYA_CONTROLLER_PLAYER_NUM:Ljava/lang/String; = "PLAYER_NUM"

.field private static final INVALID_INPUT_DEVICE_ID:I = -0x1

.field public static final MAX_CONTROLLERS:I = 0x4

.field private static final OUYA_CONTROLLER_ADDED_ACTION:Ljava/lang/String; = "tv.ouya.controller.added"

.field private static final OUYA_CONTROLLER_REMOVED_ACTION:Ljava/lang/String; = "tv.ouya.controller.removed"

.field private static final OUYA_ID:Ljava/lang/String; = "OUYA Game Controller"

.field private static final ROCK_CANDY_ID:Ljava/lang/String; = "Generic X-Box pad"

.field public static final STICK_DEADZONE:F = 0.25f

.field private static appContext:Landroid/content/Context;

.field private static final s_axisByDeviceName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field

.field private static final s_buttonByDeviceName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/SparseIntArray;",
            ">;"
        }
    .end annotation
.end field

.field static final s_controllers:[Ltv/ouya/console/api/OuyaController;


# instance fields
.field private axisValues:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private buttonValues:Landroid/util/SparseBooleanArray;

.field private device:Landroid/view/InputDevice;

.field private deviceAxis:Landroid/util/SparseIntArray;

.field private deviceId:I

.field private deviceKeycodes:Landroid/util/SparseIntArray;

.field private thisFrameButtonValues:Landroid/util/SparseBooleanArray;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/16 v12, 0x11

    const/16 v11, 0xe

    const/16 v10, 0xb

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 140
    const/4 v6, 0x6

    new-array v6, v6, [I

    fill-array-data v6, :array_0

    sput-object v6, Ltv/ouya/console/api/OuyaController;->AVAILABLE_AXES:[I

    .line 396
    const/4 v6, 0x4

    new-array v6, v6, [Ltv/ouya/console/api/OuyaController;

    sput-object v6, Ltv/ouya/console/api/OuyaController;->s_controllers:[Ltv/ouya/console/api/OuyaController;

    .line 411
    new-instance v5, Landroid/util/SparseIntArray;

    invoke-direct {v5}, Landroid/util/SparseIntArray;-><init>()V

    .line 413
    .local v5, "rockCandyButtonMap":Landroid/util/SparseIntArray;
    const/16 v6, 0x60

    const/16 v7, 0x60

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 414
    const/16 v6, 0x63

    const/16 v7, 0x63

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 415
    const/16 v6, 0x64

    const/16 v7, 0x64

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 416
    const/16 v6, 0x61

    const/16 v7, 0x61

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 417
    const/16 v6, 0x66

    const/16 v7, 0x66

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 418
    const/16 v6, 0x68

    const/16 v7, 0x68

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 419
    const/16 v6, 0x6a

    const/16 v7, 0x6a

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 420
    const/16 v6, 0x67

    const/16 v7, 0x67

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 421
    const/16 v6, 0x69

    const/16 v7, 0x69

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 422
    const/16 v6, 0x6b

    const/16 v7, 0x6b

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 423
    const/16 v6, 0x14

    const/16 v7, 0x14

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 424
    const/16 v6, 0x13

    const/16 v7, 0x13

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 425
    const/16 v6, 0x16

    const/16 v7, 0x16

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 426
    const/16 v6, 0x15

    const/16 v7, 0x15

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 427
    const/16 v6, 0x6c

    const/16 v7, 0x52

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 429
    new-instance v3, Landroid/util/SparseIntArray;

    invoke-direct {v3}, Landroid/util/SparseIntArray;-><init>()V

    .line 431
    .local v3, "ouyaButtonMap":Landroid/util/SparseIntArray;
    const/16 v6, 0x60

    const/16 v7, 0x60

    invoke-virtual {v3, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 432
    const/16 v6, 0x63

    const/16 v7, 0x63

    invoke-virtual {v3, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 433
    const/16 v6, 0x64

    const/16 v7, 0x64

    invoke-virtual {v3, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 434
    const/16 v6, 0x61

    const/16 v7, 0x61

    invoke-virtual {v3, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 435
    const/16 v6, 0x66

    const/16 v7, 0x66

    invoke-virtual {v3, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 436
    const/16 v6, 0x68

    const/16 v7, 0x68

    invoke-virtual {v3, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 437
    const/16 v6, 0x6a

    const/16 v7, 0x6a

    invoke-virtual {v3, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 438
    const/16 v6, 0x67

    const/16 v7, 0x67

    invoke-virtual {v3, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 439
    const/16 v6, 0x69

    const/16 v7, 0x69

    invoke-virtual {v3, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 440
    const/16 v6, 0x6b

    const/16 v7, 0x6b

    invoke-virtual {v3, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 441
    const/16 v6, 0x14

    const/16 v7, 0x14

    invoke-virtual {v3, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 442
    const/16 v6, 0x13

    const/16 v7, 0x13

    invoke-virtual {v3, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 443
    const/16 v6, 0x16

    const/16 v7, 0x16

    invoke-virtual {v3, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 444
    const/16 v6, 0x15

    const/16 v7, 0x15

    invoke-virtual {v3, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 445
    const/16 v6, 0x52

    const/16 v7, 0x52

    invoke-virtual {v3, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 447
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 449
    .local v1, "buttonByDevice":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    const-string v6, "Generic X-Box pad"

    invoke-interface {v1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    const-string v6, "OUYA Game Controller"

    invoke-interface {v1, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    sput-object v6, Ltv/ouya/console/api/OuyaController;->s_buttonByDeviceName:Ljava/util/Map;

    .line 455
    new-instance v4, Landroid/util/SparseIntArray;

    invoke-direct {v4}, Landroid/util/SparseIntArray;-><init>()V

    .line 457
    .local v4, "rockCandyAxisMap":Landroid/util/SparseIntArray;
    invoke-virtual {v4, v8, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 458
    invoke-virtual {v4, v9, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 459
    invoke-virtual {v4, v10, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 460
    invoke-virtual {v4, v11, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 461
    invoke-virtual {v4, v12, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 462
    const/16 v6, 0x12

    const/16 v7, 0x12

    invoke-virtual {v4, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 464
    new-instance v2, Landroid/util/SparseIntArray;

    invoke-direct {v2}, Landroid/util/SparseIntArray;-><init>()V

    .line 466
    .local v2, "ouyaAxisMap":Landroid/util/SparseIntArray;
    invoke-virtual {v2, v8, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 467
    invoke-virtual {v2, v9, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 468
    invoke-virtual {v2, v10, v10}, Landroid/util/SparseIntArray;->put(II)V

    .line 469
    invoke-virtual {v2, v11, v11}, Landroid/util/SparseIntArray;->put(II)V

    .line 470
    invoke-virtual {v2, v12, v12}, Landroid/util/SparseIntArray;->put(II)V

    .line 471
    const/16 v6, 0x12

    const/16 v7, 0x12

    invoke-virtual {v2, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 473
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 475
    .local v0, "axisByDevice":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    const-string v6, "Generic X-Box pad"

    invoke-interface {v0, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    const-string v6, "OUYA Game Controller"

    invoke-interface {v0, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v6

    sput-object v6, Ltv/ouya/console/api/OuyaController;->s_axisByDeviceName:Ljava/util/Map;

    .line 479
    return-void

    .line 140
    :array_0
    .array-data 4
        0x0
        0x1
        0xb
        0xe
        0x11
        0x12
    .end array-data
.end method

.method constructor <init>(I)V
    .locals 1
    .param p1, "deviceId"    # I

    .prologue
    .line 581
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 582
    iput p1, p0, Ltv/ouya/console/api/OuyaController;->deviceId:I

    .line 583
    invoke-static {p1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    iput-object v0, p0, Ltv/ouya/console/api/OuyaController;->device:Landroid/view/InputDevice;

    .line 584
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Ltv/ouya/console/api/OuyaController;->axisValues:Landroid/util/SparseArray;

    .line 585
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Ltv/ouya/console/api/OuyaController;->buttonValues:Landroid/util/SparseBooleanArray;

    .line 586
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Ltv/ouya/console/api/OuyaController;->thisFrameButtonValues:Landroid/util/SparseBooleanArray;

    .line 588
    iget-object v0, p0, Ltv/ouya/console/api/OuyaController;->device:Landroid/view/InputDevice;

    invoke-static {v0}, Ltv/ouya/console/api/OuyaController;->getAxisMap(Landroid/view/InputDevice;)Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, Ltv/ouya/console/api/OuyaController;->deviceAxis:Landroid/util/SparseIntArray;

    .line 589
    iget-object v0, p0, Ltv/ouya/console/api/OuyaController;->device:Landroid/view/InputDevice;

    invoke-static {v0}, Ltv/ouya/console/api/OuyaController;->getButtonMap(Landroid/view/InputDevice;)Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, Ltv/ouya/console/api/OuyaController;->deviceKeycodes:Landroid/util/SparseIntArray;

    .line 590
    return-void
.end method

.method private static getAxisMap(Landroid/view/InputDevice;)Landroid/util/SparseIntArray;
    .locals 4
    .param p0, "device"    # Landroid/view/InputDevice;

    .prologue
    .line 491
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 492
    .local v1, "deviceName":Ljava/lang/String;
    :goto_0
    sget-object v2, Ltv/ouya/console/api/OuyaController;->s_axisByDeviceName:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    .line 493
    .local v0, "deviceAxis":Landroid/util/SparseIntArray;
    if-nez v0, :cond_0

    .line 494
    sget-object v2, Ltv/ouya/console/api/OuyaController;->s_axisByDeviceName:Ljava/util/Map;

    const-string v3, "OUYA Game Controller"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "deviceAxis":Landroid/util/SparseIntArray;
    check-cast v0, Landroid/util/SparseIntArray;

    .line 496
    .restart local v0    # "deviceAxis":Landroid/util/SparseIntArray;
    :cond_0
    return-object v0

    .line 491
    .end local v0    # "deviceAxis":Landroid/util/SparseIntArray;
    .end local v1    # "deviceName":Ljava/lang/String;
    :cond_1
    const-string v1, "OUYA Game Controller"

    goto :goto_0
.end method

.method private static getButtonMap(Landroid/view/InputDevice;)Landroid/util/SparseIntArray;
    .locals 4
    .param p0, "device"    # Landroid/view/InputDevice;

    .prologue
    .line 482
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 483
    .local v1, "deviceName":Ljava/lang/String;
    :goto_0
    sget-object v2, Ltv/ouya/console/api/OuyaController;->s_buttonByDeviceName:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseIntArray;

    .line 484
    .local v0, "deviceButton":Landroid/util/SparseIntArray;
    if-nez v0, :cond_0

    .line 485
    sget-object v2, Ltv/ouya/console/api/OuyaController;->s_buttonByDeviceName:Ljava/util/Map;

    const-string v3, "OUYA Game Controller"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "deviceButton":Landroid/util/SparseIntArray;
    check-cast v0, Landroid/util/SparseIntArray;

    .line 487
    .restart local v0    # "deviceButton":Landroid/util/SparseIntArray;
    :cond_0
    return-object v0

    .line 482
    .end local v0    # "deviceButton":Landroid/util/SparseIntArray;
    .end local v1    # "deviceName":Ljava/lang/String;
    :cond_1
    const-string v1, "OUYA Game Controller"

    goto :goto_0
.end method

.method public static getControllerByDeviceId(I)Ltv/ouya/console/api/OuyaController;
    .locals 5
    .param p0, "deviceId"    # I

    .prologue
    .line 216
    sget-object v0, Ltv/ouya/console/api/OuyaController;->s_controllers:[Ltv/ouya/console/api/OuyaController;

    .local v0, "arr$":[Ltv/ouya/console/api/OuyaController;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 217
    .local v1, "c":Ltv/ouya/console/api/OuyaController;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ltv/ouya/console/api/OuyaController;->getDeviceId()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 221
    .end local v1    # "c":Ltv/ouya/console/api/OuyaController;
    :goto_1
    return-object v1

    .line 216
    .restart local v1    # "c":Ltv/ouya/console/api/OuyaController;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 221
    .end local v1    # "c":Ltv/ouya/console/api/OuyaController;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getControllerByPlayer(I)Ltv/ouya/console/api/OuyaController;
    .locals 1
    .param p0, "playerNum"    # I

    .prologue
    .line 241
    sget-object v0, Ltv/ouya/console/api/OuyaController;->s_controllers:[Ltv/ouya/console/api/OuyaController;

    if-eqz v0, :cond_0

    .line 242
    if-ltz p0, :cond_0

    const/4 v0, 0x4

    if-ge p0, v0, :cond_0

    .line 243
    sget-object v0, Ltv/ouya/console/api/OuyaController;->s_controllers:[Ltv/ouya/console/api/OuyaController;

    aget-object v0, v0, p0

    .line 246
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getDeviceIdFromPlayerNum(I)I
    .locals 9
    .param p0, "playerNum"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v8, 0x0

    .line 526
    const-string v0, "content://tv.ouya.controllerdata/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 527
    .local v1, "controllerUri":Landroid/net/Uri;
    sget-object v0, Ltv/ouya/console/api/OuyaController;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "input_device_id"

    aput-object v3, v2, v8

    const-string v3, "player_num = ?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 534
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 535
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 539
    .local v7, "deviceId":I
    if-eqz v6, :cond_0

    .line 540
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 543
    .end local v7    # "deviceId":I
    :cond_0
    :goto_0
    return v7

    .line 539
    :cond_1
    if-eqz v6, :cond_2

    .line 540
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 543
    :cond_2
    const/4 v7, -0x1

    goto :goto_0

    .line 539
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 540
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method private static getOrCreateControllerByDeviceId(I)Ltv/ouya/console/api/OuyaController;
    .locals 5
    .param p0, "deviceId"    # I

    .prologue
    const/4 v2, 0x0

    .line 500
    invoke-static {p0}, Ltv/ouya/console/api/OuyaController;->getControllerByDeviceId(I)Ltv/ouya/console/api/OuyaController;

    move-result-object v0

    .line 501
    .local v0, "c":Ltv/ouya/console/api/OuyaController;
    if-eqz v0, :cond_0

    .line 522
    .end local v0    # "c":Ltv/ouya/console/api/OuyaController;
    :goto_0
    return-object v0

    .line 505
    .restart local v0    # "c":Ltv/ouya/console/api/OuyaController;
    :cond_0
    sget-object v3, Ltv/ouya/console/api/OuyaController;->s_controllers:[Ltv/ouya/console/api/OuyaController;

    if-eqz v3, :cond_4

    .line 506
    invoke-static {p0}, Ltv/ouya/console/api/OuyaController;->getPlayerNumFromDeviceId(I)I

    move-result v1

    .line 507
    .local v1, "playerNum":I
    if-ltz v1, :cond_1

    const/4 v3, 0x4

    if-lt v1, v3, :cond_2

    :cond_1
    move-object v0, v2

    .line 508
    goto :goto_0

    .line 511
    :cond_2
    sget-object v2, Ltv/ouya/console/api/OuyaController;->s_controllers:[Ltv/ouya/console/api/OuyaController;

    aget-object v2, v2, v1

    if-eqz v2, :cond_3

    .line 512
    const-string v2, "OuyaController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Controller for player "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " already found, but doesn\'t match device id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "(expected "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Ltv/ouya/console/api/OuyaController;->s_controllers:[Ltv/ouya/console/api/OuyaController;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Ltv/ouya/console/api/OuyaController;->getDeviceId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    sget-object v2, Ltv/ouya/console/api/OuyaController;->s_controllers:[Ltv/ouya/console/api/OuyaController;

    aget-object v0, v2, v1

    goto :goto_0

    .line 518
    :cond_3
    sget-object v2, Ltv/ouya/console/api/OuyaController;->s_controllers:[Ltv/ouya/console/api/OuyaController;

    new-instance v3, Ltv/ouya/console/api/OuyaController;

    invoke-direct {v3, p0}, Ltv/ouya/console/api/OuyaController;-><init>(I)V

    aput-object v3, v2, v1

    .line 519
    sget-object v2, Ltv/ouya/console/api/OuyaController;->s_controllers:[Ltv/ouya/console/api/OuyaController;

    aget-object v0, v2, v1

    goto :goto_0

    .end local v1    # "playerNum":I
    :cond_4
    move-object v0, v2

    .line 522
    goto :goto_0
.end method

.method public static getPlayerNumByDeviceId(I)I
    .locals 2
    .param p0, "deviceId"    # I

    .prologue
    .line 229
    invoke-static {p0}, Ltv/ouya/console/api/OuyaController;->getOrCreateControllerByDeviceId(I)Ltv/ouya/console/api/OuyaController;

    move-result-object v0

    .line 231
    .local v0, "controller":Ltv/ouya/console/api/OuyaController;
    if-nez v0, :cond_0

    .line 232
    const/4 v1, -0x1

    .line 234
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ltv/ouya/console/api/OuyaController;->getPlayerNum()I

    move-result v1

    goto :goto_0
.end method

.method private static getPlayerNumFromDeviceId(I)I
    .locals 9
    .param p0, "deviceId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v7, -0x1

    const/4 v8, 0x0

    .line 547
    sget-object v0, Ltv/ouya/console/api/OuyaController;->appContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 567
    :cond_0
    :goto_0
    return v7

    .line 550
    :cond_1
    const-string v0, "content://tv.ouya.controllerdata/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 551
    .local v1, "controllerUri":Landroid/net/Uri;
    sget-object v0, Ltv/ouya/console/api/OuyaController;->appContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "player_num"

    aput-object v3, v2, v8

    const-string v3, "input_device_id = ?"

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 558
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_2

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 559
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 563
    .local v7, "playerNum":I
    if-eqz v6, :cond_0

    .line 564
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 563
    .end local v7    # "playerNum":I
    :cond_2
    if-eqz v6, :cond_0

    .line 564
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 563
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 564
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 160
    sget-object v4, Ltv/ouya/console/api/OuyaController;->appContext:Landroid/content/Context;

    if-eqz v4, :cond_0

    .line 210
    :goto_0
    return-void

    .line 165
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    sput-object v4, Ltv/ouya/console/api/OuyaController;->appContext:Landroid/content/Context;

    .line 167
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/4 v4, 0x4

    if-ge v2, v4, :cond_2

    .line 168
    invoke-static {v2}, Ltv/ouya/console/api/OuyaController;->getDeviceIdFromPlayerNum(I)I

    move-result v0

    .line 169
    .local v0, "deviceId":I
    const/4 v4, -0x1

    if-eq v0, v4, :cond_1

    .line 170
    invoke-static {v0}, Ltv/ouya/console/api/OuyaController;->getOrCreateControllerByDeviceId(I)Ltv/ouya/console/api/OuyaController;

    .line 167
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 174
    .end local v0    # "deviceId":I
    :cond_2
    new-instance v3, Ltv/ouya/console/api/OuyaController$1;

    invoke-direct {v3}, Ltv/ouya/console/api/OuyaController$1;-><init>()V

    .line 206
    .local v3, "receiver":Landroid/content/BroadcastReceiver;
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 207
    .local v1, "filter":Landroid/content/IntentFilter;
    const-string v4, "tv.ouya.controller.added"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 208
    const-string v4, "tv.ouya.controller.removed"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 209
    sget-object v4, Ltv/ouya/console/api/OuyaController;->appContext:Landroid/content/Context;

    invoke-virtual {v4, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private mapAxis(I)I
    .locals 2
    .param p1, "axis"    # I

    .prologue
    .line 601
    iget-object v1, p0, Ltv/ouya/console/api/OuyaController;->deviceAxis:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 602
    const/4 v0, -0x1

    .line 605
    :goto_0
    return v0

    .line 604
    :cond_0
    iget-object v1, p0, Ltv/ouya/console/api/OuyaController;->deviceAxis:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 605
    .local v0, "interpretedAxis":I
    goto :goto_0
.end method

.method private mapKeyCode(Landroid/view/KeyEvent;)I
    .locals 3
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 593
    iget-object v1, p0, Ltv/ouya/console/api/OuyaController;->deviceKeycodes:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 594
    const/4 v0, -0x1

    .line 597
    :goto_0
    return v0

    .line 596
    :cond_0
    iget-object v1, p0, Ltv/ouya/console/api/OuyaController;->deviceKeycodes:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 597
    .local v0, "interpretedKeycode":I
    goto :goto_0
.end method

.method public static onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .param p0, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    .line 253
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getSource()I

    move-result v9

    and-int/lit8 v9, v9, 0x10

    if-nez v9, :cond_1

    .line 278
    :cond_0
    :goto_0
    return v8

    .line 257
    :cond_1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    .line 261
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v9

    invoke-static {v9}, Ltv/ouya/console/api/OuyaController;->getOrCreateControllerByDeviceId(I)Ltv/ouya/console/api/OuyaController;

    move-result-object v2

    .line 262
    .local v2, "device":Ltv/ouya/console/api/OuyaController;
    if-eqz v2, :cond_0

    .line 267
    sget-object v0, Ltv/ouya/console/api/OuyaController;->AVAILABLE_AXES:[I

    .local v0, "arr$":[I
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_1
    if-ge v3, v4, :cond_4

    aget v7, v0, v3

    .line 268
    .local v7, "ouyaAxis":I
    invoke-direct {v2, v7}, Ltv/ouya/console/api/OuyaController;->mapAxis(I)I

    move-result v5

    .line 269
    .local v5, "nativeAxis":I
    if-ltz v5, :cond_3

    .line 270
    iget-object v8, v2, Ltv/ouya/console/api/OuyaController;->axisValues:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    .line 271
    .local v1, "curValue":Ljava/lang/Float;
    invoke-virtual {p0, v5}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v6

    .line 272
    .local v6, "newValue":F
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v8

    cmpl-float v8, v8, v6

    if-eqz v8, :cond_3

    .line 273
    :cond_2
    iget-object v8, v2, Ltv/ouya/console/api/OuyaController;->axisValues:Landroid/util/SparseArray;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 267
    .end local v1    # "curValue":Ljava/lang/Float;
    .end local v6    # "newValue":F
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 278
    .end local v5    # "nativeAxis":I
    .end local v7    # "ouyaAxis":I
    :cond_4
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public static onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "keyCode"    # I
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 284
    invoke-static {p0, p1}, Ltv/ouya/console/api/OuyaController;->onKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method private static onKeyEvent(ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p0, "keyCode"    # I
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x0

    .line 293
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v4

    invoke-static {v4}, Ltv/ouya/console/api/OuyaController;->getOrCreateControllerByDeviceId(I)Ltv/ouya/console/api/OuyaController;

    move-result-object v0

    .line 294
    .local v0, "device":Ltv/ouya/console/api/OuyaController;
    if-nez v0, :cond_1

    .line 313
    :cond_0
    :goto_0
    return v3

    .line 297
    :cond_1
    invoke-direct {v0, p1}, Ltv/ouya/console/api/OuyaController;->mapKeyCode(Landroid/view/KeyEvent;)I

    move-result v2

    .line 298
    .local v2, "ouyaButton":I
    if-ltz v2, :cond_0

    .line 301
    const/4 v1, 0x0

    .line 302
    .local v1, "newVal":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 311
    :goto_1
    iget-object v3, v0, Ltv/ouya/console/api/OuyaController;->buttonValues:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 312
    iget-object v3, v0, Ltv/ouya/console/api/OuyaController;->thisFrameButtonValues:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 313
    const/4 v3, 0x1

    goto :goto_0

    .line 305
    :pswitch_0
    const/4 v1, 0x1

    .line 306
    goto :goto_1

    .line 308
    :pswitch_1
    const/4 v1, 0x0

    goto :goto_1

    .line 302
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "keyCode"    # I
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 290
    invoke-static {p0, p1}, Ltv/ouya/console/api/OuyaController;->onKeyEvent(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public static startOfFrame()V
    .locals 4

    .prologue
    .line 321
    sget-object v0, Ltv/ouya/console/api/OuyaController;->s_controllers:[Ltv/ouya/console/api/OuyaController;

    .local v0, "arr$":[Ltv/ouya/console/api/OuyaController;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 322
    .local v1, "c":Ltv/ouya/console/api/OuyaController;
    invoke-direct {v1}, Ltv/ouya/console/api/OuyaController;->startOfFrameInternal()V

    .line 321
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 324
    .end local v1    # "c":Ltv/ouya/console/api/OuyaController;
    :cond_0
    return-void
.end method

.method private startOfFrameInternal()V
    .locals 5

    .prologue
    .line 327
    sget-object v0, Ltv/ouya/console/api/OuyaController;->s_controllers:[Ltv/ouya/console/api/OuyaController;

    .local v0, "arr$":[Ltv/ouya/console/api/OuyaController;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 328
    .local v1, "device":Ltv/ouya/console/api/OuyaController;
    if-eqz v1, :cond_0

    iget-object v4, v1, Ltv/ouya/console/api/OuyaController;->thisFrameButtonValues:Landroid/util/SparseBooleanArray;

    if-nez v4, :cond_1

    .line 327
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 331
    :cond_1
    iget-object v4, v1, Ltv/ouya/console/api/OuyaController;->thisFrameButtonValues:Landroid/util/SparseBooleanArray;

    invoke-virtual {v4}, Landroid/util/SparseBooleanArray;->clear()V

    goto :goto_1

    .line 333
    .end local v1    # "device":Ltv/ouya/console/api/OuyaController;
    :cond_2
    return-void
.end method


# virtual methods
.method public buttonChangedThisFrame(I)Z
    .locals 1
    .param p1, "ouyaButton"    # I

    .prologue
    .line 342
    iget-object v0, p0, Ltv/ouya/console/api/OuyaController;->thisFrameButtonValues:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAxisValue(I)F
    .locals 2
    .param p1, "ouyaAxis"    # I

    .prologue
    .line 363
    iget-object v1, p0, Ltv/ouya/console/api/OuyaController;->axisValues:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 364
    iget-object v1, p0, Ltv/ouya/console/api/OuyaController;->axisValues:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    .line 365
    .local v0, "value":Ljava/lang/Float;
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 367
    .end local v0    # "value":Ljava/lang/Float;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getButton(I)Z
    .locals 2
    .param p1, "ouyaButton"    # I

    .prologue
    .line 374
    iget-object v1, p0, Ltv/ouya/console/api/OuyaController;->buttonValues:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 375
    iget-object v1, p0, Ltv/ouya/console/api/OuyaController;->buttonValues:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    .line 378
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDevice()Landroid/view/InputDevice;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Ltv/ouya/console/api/OuyaController;->device:Landroid/view/InputDevice;

    return-object v0
.end method

.method public getDeviceId()I
    .locals 1

    .prologue
    .line 356
    iget v0, p0, Ltv/ouya/console/api/OuyaController;->deviceId:I

    return v0
.end method

.method public getPlayerNum()I
    .locals 2

    .prologue
    .line 385
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 386
    sget-object v1, Ltv/ouya/console/api/OuyaController;->s_controllers:[Ltv/ouya/console/api/OuyaController;

    aget-object v1, v1, v0

    if-ne v1, p0, :cond_0

    .line 390
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 385
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 390
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method
