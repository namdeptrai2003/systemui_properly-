.class Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "NfcControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 36
    const-string/jumbo v1, "android.nfc.extra.ADAPTER_STATE"

    const/4 v2, 0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 37
    .local v0, "state":I
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl$1;->this$0:Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;

    invoke-static {v1, v0}, Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;->-wrap0(Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;I)V

    .line 35
    return-void
.end method
