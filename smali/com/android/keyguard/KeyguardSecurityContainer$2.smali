.class Lcom/android/keyguard/KeyguardSecurityContainer$2;
.super Ljava/lang/Object;
.source "KeyguardSecurityContainer.java"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecurityContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecurityContainer;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/KeyguardSecurityContainer;

    .prologue
    .line 595
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$2;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .locals 0
    .param p1, "securityVerified"    # Z

    .prologue
    .line 605
    return-void
.end method

.method public onVerifyCallback(I)V
    .locals 0
    .param p1, "result"    # I

    .prologue
    .line 607
    return-void
.end method

.method public reportUnlockAttempt(ZI)V
    .locals 0
    .param p1, "success"    # Z
    .param p2, "timeoutMs"    # I

    .prologue
    .line 601
    return-void
.end method

.method public reset()V
    .locals 0

    .prologue
    .line 611
    return-void
.end method

.method public userActivity()V
    .locals 0

    .prologue
    .line 597
    return-void
.end method
