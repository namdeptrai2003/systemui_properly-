.class Lcom/android/systemui/statusbar/phone/KeyguardBouncer$3$1;
.super Ljava/lang/Object;
.source "KeyguardBouncer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/KeyguardBouncer$3;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$3;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardBouncer$3;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/KeyguardBouncer$3;

    .prologue
    .line 603
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$3$1;->this$1:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 606
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$3$1;->this$1:Lcom/android/systemui/statusbar/phone/KeyguardBouncer$3;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardBouncer$3;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;->-wrap4(Lcom/android/systemui/statusbar/phone/KeyguardBouncer;)V

    .line 605
    return-void
.end method
