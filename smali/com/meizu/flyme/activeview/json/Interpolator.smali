.class public Lcom/meizu/flyme/activeview/json/Interpolator;
.super Ljava/lang/Object;
.source "Interpolator.java"


# instance fields
.field private args:Lcom/meizu/flyme/activeview/json/Args;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArgs()Lcom/meizu/flyme/activeview/json/Args;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Interpolator;->args:Lcom/meizu/flyme/activeview/json/Args;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Interpolator;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setArgs(Lcom/meizu/flyme/activeview/json/Args;)V
    .locals 0
    .param p1, "args"    # Lcom/meizu/flyme/activeview/json/Args;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Interpolator;->args:Lcom/meizu/flyme/activeview/json/Args;

    .line 27
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Interpolator;->name:Ljava/lang/String;

    .line 19
    return-void
.end method
