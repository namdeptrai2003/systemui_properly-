.class Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1$1;
.super Ljava/lang/Object;
.source "MarqueeTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1$1;->this$1:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 217
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1$1;->this$1:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;

    iget-object v0, v0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1$1;->this$1:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;

    iget-object v1, v1, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView$1;->this$0:Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;

    invoke-static {v1}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->-get1(Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/flyme/systemui/statusbar/phone/MarqueeTextView;->scrollTo(II)V

    .line 215
    return-void
.end method
