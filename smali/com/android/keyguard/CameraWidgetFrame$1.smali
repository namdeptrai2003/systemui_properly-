.class Lcom/android/keyguard/CameraWidgetFrame$1;
.super Ljava/lang/Object;
.source "CameraWidgetFrame.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/CameraWidgetFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/CameraWidgetFrame;


# direct methods
.method constructor <init>(Lcom/android/keyguard/CameraWidgetFrame;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/CameraWidgetFrame;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/android/keyguard/CameraWidgetFrame$1;->this$0:Lcom/android/keyguard/CameraWidgetFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/keyguard/CameraWidgetFrame$1;->this$0:Lcom/android/keyguard/CameraWidgetFrame;

    invoke-static {v0}, Lcom/android/keyguard/CameraWidgetFrame;->-wrap4(Lcom/android/keyguard/CameraWidgetFrame;)V

    .line 74
    return-void
.end method
