.class Lcom/android/keyguard/PagedView$7$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/PagedView$7;->onAnimationStart(Landroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/PagedView$7;


# direct methods
.method constructor <init>(Lcom/android/keyguard/PagedView$7;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/keyguard/PagedView$7;

    .prologue
    .line 2205
    iput-object p1, p0, Lcom/android/keyguard/PagedView$7$1;->this$1:Lcom/android/keyguard/PagedView$7;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 2208
    iget-object v0, p0, Lcom/android/keyguard/PagedView$7$1;->this$1:Lcom/android/keyguard/PagedView$7;

    iget-object v0, v0, Lcom/android/keyguard/PagedView$7;->this$0:Lcom/android/keyguard/PagedView;

    invoke-static {v0}, Lcom/android/keyguard/PagedView;->-get3(Lcom/android/keyguard/PagedView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 2207
    return-void
.end method
