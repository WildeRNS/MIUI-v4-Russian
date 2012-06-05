.class Lcom/android/internal/policy/impl/MiuiGlobalActions;
.super Ljava/lang/Object;
.source "MiuiGlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/MiuiGlobalActions$SilentModeAction;,
        Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction;,
        Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;,
        Lcom/android/internal/policy/impl/MiuiGlobalActions$Action;,
        Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;
    }
.end annotation


# static fields
.field private static final DIALOG_DISMISS_DELAY:I = 0x12c

.field private static final MESSAGE_DISMISS:I = 0x0

.field private static final MESSAGE_REFRESH:I = 0x1

.field private static final SHOW_SILENT_TOGGLE:Z = true

.field private static final TAG:Ljava/lang/String; = "GlobalActions"


# instance fields
.field private mAdapter:Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;

.field private mAirplaneModeOn:Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction;

.field private mAirplaneState:Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mDeviceProvisioned:Z

.field private mDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mIsWaitingForEcmExit:Z

.field private mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/MiuiGlobalActions$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyguardShowing:Z

.field private mMuteToggle:Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRingerModeReceiver:Landroid/content/BroadcastReceiver;

.field private mSecurityHelper:Lmiui/security/ChooseLockSettingsHelper;

.field private mSilentModeAction:Lcom/android/internal/policy/impl/MiuiGlobalActions$SilentModeAction;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 86
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mKeyguardShowing:Z

    .line 78
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDeviceProvisioned:Z

    .line 79
    sget-object v2, Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;->Off:Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;

    .line 80
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mIsWaitingForEcmExit:Z

    .line 81
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mSecurityHelper:Lmiui/security/ChooseLockSettingsHelper;

    .line 642
    new-instance v2, Lcom/android/internal/policy/impl/MiuiGlobalActions$5;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/MiuiGlobalActions$5;-><init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 663
    new-instance v2, Lcom/android/internal/policy/impl/MiuiGlobalActions$6;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/MiuiGlobalActions$6;-><init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 673
    new-instance v2, Lcom/android/internal/policy/impl/MiuiGlobalActions$7;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/MiuiGlobalActions$7;-><init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    .line 686
    new-instance v2, Lcom/android/internal/policy/impl/MiuiGlobalActions$8;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/MiuiGlobalActions$8;-><init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mHandler:Landroid/os/Handler;

    .line 87
    new-instance v2, Landroid/view/ContextThemeWrapper;

    const v3, 0x1030073

    invoke-direct {v2, p1, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    .line 88
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    .line 89
    new-instance v2, Lmiui/security/ChooseLockSettingsHelper;

    invoke-direct {v2, p1}, Lmiui/security/ChooseLockSettingsHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mSecurityHelper:Lmiui/security/ChooseLockSettingsHelper;

    .line 92
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 93
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    const-string v2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 99
    const-string v2, "phone"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 101
    .local v1, telephonyManager:Landroid/telephony/TelephonyManager;
    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mIsWaitingForEcmExit:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/MiuiGlobalActions;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mIsWaitingForEcmExit:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Landroid/content/Context;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Landroid/app/AlertDialog;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/MiuiGlobalActions;Z)V
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->changeAirplaneModeSystemSetting(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/MiuiGlobalActions;Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;)Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 59
    iput-object p1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Landroid/media/AudioManager;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mItems:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mKeyguardShowing:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDeviceProvisioned:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/MiuiGlobalActions;)Landroid/os/Handler;
    .registers 2
    .parameter "x0"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private changeAirplaneModeSystemSetting(Z)V
    .registers 6
    .parameter "on"

    .prologue
    .line 702
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    if-eqz p1, :cond_25

    const/4 v1, 0x1

    :goto_b
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 706
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 707
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 708
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 709
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 710
    return-void

    .line 702
    .end local v0           #intent:Landroid/content/Intent;
    :cond_25
    const/4 v1, 0x0

    goto :goto_b
.end method

.method private createDialog()Landroid/app/AlertDialog;
    .registers 11

    .prologue
    const/4 v9, 0x1

    .line 125
    new-instance v0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SilentModeAction;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/internal/policy/impl/MiuiGlobalActions$SilentModeAction;-><init>(Landroid/media/AudioManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mSilentModeAction:Lcom/android/internal/policy/impl/MiuiGlobalActions$SilentModeAction;

    .line 127
    new-instance v0, Lcom/android/internal/policy/impl/MiuiGlobalActions$1;

    const v2, 0x302011a

    const v3, 0x302011b

    const v4, 0x30c0188

    const v5, 0x30c0189

    const v6, 0x30c018a

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/policy/impl/MiuiGlobalActions$1;-><init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;IIIII)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction;

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mItems:Ljava/util/ArrayList;

    .line 170
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    new-instance v0, Lcom/android/internal/policy/impl/MiuiGlobalActions$2;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->getMuteIconResId()I

    move-result v1

    const v2, 0x30c0195

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/MiuiGlobalActions$2;-><init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;II)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mMuteToggle:Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;

    .line 191
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mItems:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mMuteToggle:Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/policy/impl/MiuiGlobalActions$10;

    const v2, 0x302011d

    const v3, 0x30c018c

    invoke-direct {v1, p0, v2, v3}, Lcom/android/internal/policy/impl/MiuiGlobalActions$10;-><init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mItems:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/internal/policy/impl/MiuiGlobalActions$4;

    const v2, 0x302011c

    const v3, 0x30c018b

    invoke-direct {v1, p0, v2, v3}, Lcom/android/internal/policy/impl/MiuiGlobalActions$4;-><init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    new-instance v0, Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;-><init>(Lcom/android/internal/policy/impl/MiuiGlobalActions;Lcom/android/internal/policy/impl/MiuiGlobalActions$1;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;

    .line 242
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-direct {v7, v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 244
    .local v7, ab:Landroid/app/AlertDialog$Builder;
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;

    invoke-virtual {v7, v0, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setInverseBackgroundForced(Z)Landroid/app/AlertDialog$Builder;

    .line 247
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .line 248
    .local v8, dialog:Landroid/app/AlertDialog;
    invoke-virtual {v8}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 249
    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d8

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 251
    invoke-virtual {v8, p0}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 253
    return-object v8
.end method

.method private getMuteIconResId()I
    .registers 4

    .prologue
    .line 257
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_10

    const/4 v0, 0x1

    .line 258
    .local v0, silentModeOn:Z
    :goto_a
    if-eqz v0, :cond_12

    const v1, 0x3020119

    :goto_f
    return v1

    .line 257
    .end local v0           #silentModeOn:Z
    :cond_10
    const/4 v0, 0x0

    goto :goto_a

    .line 258
    .restart local v0       #silentModeOn:Z
    :cond_12
    const v1, 0x3020118

    goto :goto_f
.end method

.method private prepareDialog()V
    .registers 4

    .prologue
    .line 265
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAirplaneModeOn:Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAirplaneState:Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction;->updateState(Lcom/android/internal/policy/impl/MiuiGlobalActions$ToggleAction$State;)V

    .line 266
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mMuteToggle:Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->getMuteIconResId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/MiuiGlobalActions$SinglePressAction;->setIcon(I)V

    .line 267
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;->notifyDataSetChanged()V

    .line 268
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mKeyguardShowing:Z

    if-eqz v1, :cond_33

    .line 269
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d9

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 274
    :goto_24
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 275
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 277
    return-void

    .line 271
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_33
    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    goto :goto_24
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/MiuiGlobalActions$Action;

    move-result-object v0

    instance-of v0, v0, Lcom/android/internal/policy/impl/MiuiGlobalActions$SilentModeAction;

    if-nez v0, :cond_d

    .line 290
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 292
    :cond_d
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mAdapter:Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;

    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/MiuiGlobalActions$MyAdapter;->getItem(I)Lcom/android/internal/policy/impl/MiuiGlobalActions$Action;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/MiuiGlobalActions$Action;->onPress()V

    .line 293
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 4
    .parameter "dialog"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 285
    return-void
.end method

.method public showDialog(ZZ)V
    .registers 5
    .parameter "keyguardShowing"
    .parameter "isDeviceProvisioned"

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mKeyguardShowing:Z

    .line 110
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDeviceProvisioned:Z

    .line 111
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_e

    .line 112
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->createDialog()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDialog:Landroid/app/AlertDialog;

    .line 114
    :cond_e
    invoke-direct {p0}, Lcom/android/internal/policy/impl/MiuiGlobalActions;->prepareDialog()V

    .line 116
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 117
    iget-object v0, p0, Lcom/android/internal/policy/impl/MiuiGlobalActions;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 118
    return-void
.end method
