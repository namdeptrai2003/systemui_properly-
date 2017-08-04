.class public Lcom/android/systemui/statusbar/phone/BarTransitions;
.super Ljava/lang/Object;
.source "BarTransitions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;
    }
.end annotation


# static fields
.field public static final HIGH_END:Z


# instance fields
.field private final mBarBackground:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

.field private mMode:I

.field private final mTag:Ljava/lang/String;

.field private final mView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/BarTransitions;->HIGH_END:Z

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/view/View;I)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "gradientResourceId"    # I

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "BarTransitions."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mTag:Ljava/lang/String;

    .line 62
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mView:Landroid/view/View;

    .line 63
    new-instance v0, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

    .line 64
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/BarTransitions;->HIGH_END:Z

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 60
    :cond_0
    return-void
.end method

.method public static modeToString(I)Ljava/lang/String;
    .locals 3
    .param p0, "mode"    # I

    .prologue
    .line 103
    if-nez p0, :cond_0

    const-string/jumbo v0, "MODE_OPAQUE"

    return-object v0

    .line 104
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string/jumbo v0, "MODE_SEMI_TRANSPARENT"

    return-object v0

    .line 105
    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string/jumbo v0, "MODE_TRANSLUCENT"

    return-object v0

    .line 106
    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    const-string/jumbo v0, "MODE_LIGHTS_OUT"

    return-object v0

    .line 107
    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    const-string/jumbo v0, "MODE_TRANSPARENT"

    return-object v0

    .line 108
    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    const-string/jumbo v0, "MODE_WARNING"

    return-object v0

    .line 109
    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    const-string/jumbo v0, "MODE_LIGHTS_OUT_TRANSPARENT"

    return-object v0

    .line 110
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected applyModeBackground(IIZ)V
    .locals 1
    .param p1, "oldMode"    # I
    .param p2, "newMode"    # I
    .param p3, "animate"    # Z

    .prologue
    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->applyModeBackground(IIZ)V

    .line 96
    return-void
.end method

.method public finishAnimations()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mBarBackground:Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BarTransitions$BarBackgroundDrawable;->finishAnimation()V

    .line 113
    return-void
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mMode:I

    return v0
.end method

.method protected isLightsOut(I)Z
    .locals 2
    .param p1, "mode"    # I

    .prologue
    const/4 v0, 0x1

    .line 118
    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/4 v1, 0x6

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onTransition(IIZ)V
    .locals 1
    .param p1, "oldMode"    # I
    .param p2, "newMode"    # I
    .param p3, "animate"    # Z

    .prologue
    .line 91
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/BarTransitions;->HIGH_END:Z

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/BarTransitions;->applyModeBackground(IIZ)V

    .line 90
    :cond_0
    return-void
.end method

.method public transitionTo(IZ)V
    .locals 2
    .param p1, "mode"    # I
    .param p2, "animate"    # Z

    .prologue
    .line 75
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/BarTransitions;->HIGH_END:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    .line 77
    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 79
    :cond_1
    sget-boolean v1, Lcom/android/systemui/statusbar/phone/BarTransitions;->HIGH_END:Z

    if-nez v1, :cond_2

    const/4 v1, 0x6

    if-ne p1, v1, :cond_2

    .line 80
    const/4 p1, 0x3

    .line 82
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mMode:I

    if-ne v1, p1, :cond_4

    return-void

    .line 76
    :cond_3
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    goto :goto_0

    .line 83
    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mMode:I

    .line 84
    .local v0, "oldMode":I
    iput p1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mMode:I

    .line 87
    iget v1, p0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mMode:I

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/systemui/statusbar/phone/BarTransitions;->onTransition(IIZ)V

    .line 73
    return-void
.end method
