.class public abstract Lcom/meizu/media/music/support/IMusicSupportListener$Stub;
.super Landroid/os/Binder;
.source "IMusicSupportListener.java"

# interfaces
.implements Lcom/meizu/media/music/support/IMusicSupportListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/media/music/support/IMusicSupportListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/media/music/support/IMusicSupportListener$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "com.meizu.media.music.support.IMusicSupportListener"

    invoke-virtual {p0, p0, v0}, Lcom/meizu/media/music/support/IMusicSupportListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/meizu/media/music/support/IMusicSupportListener;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 23
    if-nez p0, :cond_0

    .line 24
    return-object v1

    .line 26
    :cond_0
    const-string/jumbo v1, "com.meizu.media.music.support.IMusicSupportListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/meizu/media/music/support/IMusicSupportListener;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/meizu/media/music/support/IMusicSupportListener;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lcom/meizu/media/music/support/IMusicSupportListener$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/meizu/media/music/support/IMusicSupportListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 87
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 42
    :sswitch_0
    const-string/jumbo v4, "com.meizu.media.music.support.IMusicSupportListener"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return v5

    .line 47
    :sswitch_1
    const-string/jumbo v4, "com.meizu.media.music.support.IMusicSupportListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    .line 51
    .local v2, "_arg0":Z
    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    .line 52
    .local v3, "_arg1":Z
    :goto_1
    invoke-virtual {p0, v2, v3}, Lcom/meizu/media/music/support/IMusicSupportListener$Stub;->onPlayStateChnaged(ZZ)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    return v5

    .line 49
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Z
    goto :goto_0

    .line 51
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "_arg1":Z
    goto :goto_1

    .line 58
    .end local v2    # "_arg0":Z
    .end local v3    # "_arg1":Z
    :sswitch_2
    const-string/jumbo v4, "com.meizu.media.music.support.IMusicSupportListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 61
    sget-object v4, Lcom/meizu/media/music/support/SupportSongItem;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meizu/media/music/support/SupportSongItem;

    .line 66
    :goto_2
    invoke-virtual {p0, v1}, Lcom/meizu/media/music/support/IMusicSupportListener$Stub;->onPlayingSongChanged(Lcom/meizu/media/music/support/SupportSongItem;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    return v5

    .line 64
    :cond_2
    const/4 v1, 0x0

    .local v1, "_arg0":Lcom/meizu/media/music/support/SupportSongItem;
    goto :goto_2

    .line 72
    .end local v1    # "_arg0":Lcom/meizu/media/music/support/SupportSongItem;
    :sswitch_3
    const-string/jumbo v4, "com.meizu.media.music.support.IMusicSupportListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 75
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/meizu/media/music/support/IMusicSupportListener$Stub;->onPlayListCountChanged(I)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    return v5

    .line 81
    .end local v0    # "_arg0":I
    :sswitch_4
    const-string/jumbo v4, "com.meizu.media.music.support.IMusicSupportListener"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/meizu/media/music/support/IMusicSupportListener$Stub;->onLyricChanged()V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    return v5

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
