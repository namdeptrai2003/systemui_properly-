.class final Lcom/meizu/media/music/support/SupportSongItem$1;
.super Ljava/lang/Object;
.source "SupportSongItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/music/support/SupportSongItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/meizu/media/music/support/SupportSongItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/meizu/media/music/support/SupportSongItem;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 18
    new-instance v0, Lcom/meizu/media/music/support/SupportSongItem;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/meizu/media/music/support/SupportSongItem;-><init>(Landroid/os/Parcel;Lcom/meizu/media/music/support/SupportSongItem;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/meizu/media/music/support/SupportSongItem$1;->createFromParcel(Landroid/os/Parcel;)Lcom/meizu/media/music/support/SupportSongItem;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/meizu/media/music/support/SupportSongItem;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 23
    new-array v0, p1, [Lcom/meizu/media/music/support/SupportSongItem;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 22
    invoke-virtual {p0, p1}, Lcom/meizu/media/music/support/SupportSongItem$1;->newArray(I)[Lcom/meizu/media/music/support/SupportSongItem;

    move-result-object v0

    return-object v0
.end method
