.class public final Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;
.super Ljava/lang/Object;
.source "BluetoothController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BluetoothController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PairedDevice"
.end annotation


# static fields
.field public static STATE_CONNECTED:I

.field public static STATE_CONNECTING:I

.field public static STATE_DISCONNECTED:I

.field public static STATE_DISCONNECTING:I


# instance fields
.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public state:I

.field public tag:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->STATE_DISCONNECTED:I

    .line 56
    const/4 v0, 0x1

    sput v0, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->STATE_CONNECTING:I

    .line 57
    const/4 v0, 0x2

    sput v0, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->STATE_CONNECTED:I

    .line 58
    const/4 v0, 0x3

    sput v0, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->STATE_DISCONNECTING:I

    .line 54
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    sget v0, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->STATE_DISCONNECTED:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->state:I

    .line 54
    return-void
.end method
