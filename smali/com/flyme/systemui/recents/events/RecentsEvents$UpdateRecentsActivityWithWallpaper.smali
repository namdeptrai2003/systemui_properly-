.class public Lcom/flyme/systemui/recents/events/RecentsEvents$UpdateRecentsActivityWithWallpaper;
.super Ljava/lang/Object;
.source "RecentsEvents.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    const-string/jumbo v0, "recents.Events"

    const-string/jumbo v1, "UpdateRecentsActivityWithWallpaper"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void
.end method
