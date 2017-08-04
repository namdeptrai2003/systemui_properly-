.class public abstract Lcom/android/keyguard/KeyguardViewBase;
.super Landroid/widget/FrameLayout;
.source "KeyguardViewBase.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/KeyguardViewBase$1;
    }
.end annotation


# instance fields
.field private final mActivityLauncher:Lcom/android/keyguard/KeyguardActivityLauncher;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mDismissAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOnNoMatch:Ljava/lang/Runnable;

.field private mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field protected mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/KeyguardViewBase;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardViewBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 440
    new-instance v0, Lcom/android/keyguard/KeyguardViewBase$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardViewBase$1;-><init>(Lcom/android/keyguard/KeyguardViewBase;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mActivityLauncher:Lcom/android/keyguard/KeyguardActivityLauncher;

    .line 84
    return-void
.end method

.method private handleMediaKeyEvent(Landroid/view/KeyEvent;)V
    .locals 2
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 387
    monitor-enter p0

    .line 388
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 389
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardViewBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 390
    const-string/jumbo v1, "audio"

    .line 389
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    .line 393
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 386
    return-void

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private shouldEnableMenuKey()Z
    .locals 6

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardViewBase;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 415
    .local v3, "res":Landroid/content/res/Resources;
    sget v4, Lcom/android/keyguard/R$bool;->config_disableMenuKeyInLockScreen:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 416
    .local v0, "configDisabled":Z
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v2

    .line 417
    .local v2, "isTestHarness":Z
    new-instance v4, Ljava/io/File;

    const-string/jumbo v5, "/data/local/enable_menu_key"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    .line 418
    .local v1, "fileOverride":Z
    if-eqz v0, :cond_0

    if-nez v2, :cond_0

    .end local v1    # "fileOverride":Z
    :goto_0
    return v1

    .restart local v1    # "fileOverride":Z
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public abstract cleanUp()V
.end method

.method public dismiss()Z
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardViewBase;->dismiss(Z)Z

    move-result v0

    return v0
.end method

.method public dismiss(Z)Z
    .locals 1
    .param p1, "authenticated"    # Z

    .prologue
    .line 174
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showNextSecurityScreenOrFinish(Z)Z

    move-result v0

    return v0
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 90
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 91
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardDoneDrawing()V

    .line 89
    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 297
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardViewBase;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    const/4 v0, 0x1

    return v0

    .line 300
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 160
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 161
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->getCurrentSecurityModeContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    const/4 v0, 0x1

    return v0

    .line 164
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchSystemUiVisibilityChanged(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 398
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchSystemUiVisibilityChanged(I)V

    .line 400
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_0

    .line 401
    const/high16 v0, 0x400000

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardViewBase;->setSystemUiVisibility(I)V

    .line 397
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 185
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, "deferKeyguardDone":Z
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mDismissAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mDismissAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    invoke-interface {v1}, Lcom/android/keyguard/KeyguardHostView$OnDismissAction;->onDismiss()Z

    move-result v0

    .line 192
    .local v0, "deferKeyguardDone":Z
    iput-object v2, p0, Lcom/android/keyguard/KeyguardViewBase;->mDismissAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    .line 194
    .end local v0    # "deferKeyguardDone":Z
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz v1, :cond_1

    .line 195
    if-eqz v0, :cond_2

    .line 196
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v1}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardDonePending()V

    .line 182
    :cond_1
    :goto_0
    return-void

    .line 198
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v1, v3}, Lcom/android/keyguard/ViewMediatorCallback;->keyguardDone(Z)V

    goto :goto_0
.end method

.method protected getActivityLauncher()Lcom/android/keyguard/KeyguardActivityLauncher;
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mActivityLauncher:Lcom/android/keyguard/KeyguardActivityLauncher;

    return-object v0
.end method

.method public getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 1

    .prologue
    .line 492
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getCurrentSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    return-object v0
.end method

.method protected getSecurityContainer()Lcom/android/keyguard/KeyguardSecurityContainer;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    return-object v0
.end method

.method public getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .locals 1

    .prologue
    .line 488
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    return-object v0
.end method

.method public abstract getUserActivityTimeout()J
.end method

.method public handleMenuKey()Z
    .locals 1

    .prologue
    .line 423
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardViewBase;->shouldEnableMenuKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardViewBase;->dismiss()Z

    .line 425
    const/4 v0, 0x1

    return v0

    .line 427
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public interceptMediaKey(Landroid/view/KeyEvent;)Z
    .locals 4
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 311
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 312
    .local v0, "keyCode":I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3

    .line 313
    sparse-switch v0, :sswitch_data_0

    .line 383
    :cond_0
    :goto_0
    return v2

    .line 319
    :sswitch_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v1, :cond_1

    .line 320
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardViewBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 321
    const-string/jumbo v2, "phone"

    .line 320
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 323
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_2

    .line 324
    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-eqz v1, :cond_2

    .line 325
    return v3

    .line 336
    :cond_2
    :sswitch_1
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardViewBase;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 337
    return v3

    .line 360
    :sswitch_2
    return v2

    .line 364
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_0

    .line 365
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 378
    :sswitch_3
    invoke-direct {p0, p1}, Lcom/android/keyguard/KeyguardViewBase;->handleMediaKeyEvent(Landroid/view/KeyEvent;)V

    .line 379
    return v3

    .line 313
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_2
        0x19 -> :sswitch_2
        0x4f -> :sswitch_1
        0x55 -> :sswitch_0
        0x56 -> :sswitch_1
        0x57 -> :sswitch_1
        0x58 -> :sswitch_1
        0x59 -> :sswitch_1
        0x5a -> :sswitch_1
        0x5b -> :sswitch_1
        0x7e -> :sswitch_0
        0x7f -> :sswitch_0
        0x82 -> :sswitch_1
        0xa4 -> :sswitch_2
        0xde -> :sswitch_1
    .end sparse-switch

    .line 365
    :sswitch_data_1
    .sparse-switch
        0x4f -> :sswitch_3
        0x55 -> :sswitch_3
        0x56 -> :sswitch_3
        0x57 -> :sswitch_3
        0x58 -> :sswitch_3
        0x59 -> :sswitch_3
        0x5a -> :sswitch_3
        0x5b -> :sswitch_3
        0x7e -> :sswitch_3
        0x7f -> :sswitch_3
        0x82 -> :sswitch_3
        0xde -> :sswitch_3
    .end sparse-switch
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 108
    sget v0, Lcom/android/keyguard/R$id;->keyguard_security_container:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardViewBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 107
    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 109
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 110
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 111
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardSecurityContainer;->setSecurityCallback(Lcom/android/keyguard/KeyguardSecurityContainer$SecurityCallback;)V

    .line 112
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showPrimarySecurityScreen(Z)V

    .line 106
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 230
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 231
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showPrimarySecurityScreen(Z)V

    .line 232
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->onPause()V

    .line 233
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardViewBase;->clearFocus()V

    .line 225
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->onResume(I)V

    .line 242
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardViewBase;->requestFocus()Z

    .line 239
    return-void
.end method

.method public onSecurityModeChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)V
    .locals 1
    .param p1, "securityMode"    # Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;
    .param p2, "needsInput"    # Z

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0, p2}, Lcom/android/keyguard/ViewMediatorCallback;->setNeedsInput(Z)V

    .line 204
    :cond_0
    return-void
.end method

.method public onVerifyCallback(I)V
    .locals 1
    .param p1, "result"    # I

    .prologue
    .line 504
    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 505
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mOnNoMatch:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 507
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mOnNoMatch:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 503
    :cond_1
    return-void
.end method

.method public relayoutPassWordView()V
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->relayoutPassWordView()V

    .line 522
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->resetStateLocked()V

    .line 518
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 1
    .param p1, "utils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 483
    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewBase;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 484
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 482
    return-void
.end method

.method public setOnDismissAction(Lcom/android/keyguard/KeyguardHostView$OnDismissAction;)V
    .locals 0
    .param p1, "action"    # Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewBase;->mDismissAction:Lcom/android/keyguard/KeyguardHostView$OnDismissAction;

    .line 101
    return-void
.end method

.method public setOnNoMatchRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 514
    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewBase;->mOnNoMatch:Ljava/lang/Runnable;

    .line 513
    return-void
.end method

.method public setViewMediatorCallback(Lcom/android/keyguard/ViewMediatorCallback;)V
    .locals 2
    .param p1, "viewMediatorCallback"    # Lcom/android/keyguard/ViewMediatorCallback;

    .prologue
    .line 431
    iput-object p1, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 433
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->needsInput()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/keyguard/ViewMediatorCallback;->setNeedsInput(Z)V

    .line 430
    return-void
.end method

.method public showPrimarySecurityScreen()V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showPrimarySecurityScreen(Z)V

    .line 119
    return-void
.end method

.method public startAppearAnimation()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->startAppearAnimation()V

    .line 248
    return-void
.end method

.method public startDisappearAnimation(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "finishRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->startDisappearAnimation(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 254
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 252
    :cond_0
    return-void
.end method

.method public userActivity()V
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/keyguard/ViewMediatorCallback;->userActivity()V

    .line 210
    :cond_0
    return-void
.end method
