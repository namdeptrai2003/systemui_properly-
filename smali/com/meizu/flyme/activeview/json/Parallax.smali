.class public Lcom/meizu/flyme/activeview/json/Parallax;
.super Ljava/lang/Object;
.source "Parallax.java"


# instance fields
.field private parameter:Lcom/meizu/flyme/activeview/json/Parameter;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getParameter()Lcom/meizu/flyme/activeview/json/Parameter;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Parallax;->parameter:Lcom/meizu/flyme/activeview/json/Parameter;

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/meizu/flyme/activeview/json/Parallax;->type:Ljava/lang/String;

    return-object v0
.end method

.method public setParameter(Lcom/meizu/flyme/activeview/json/Parameter;)V
    .locals 0
    .param p1, "parameter"    # Lcom/meizu/flyme/activeview/json/Parameter;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Parallax;->parameter:Lcom/meizu/flyme/activeview/json/Parameter;

    .line 21
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 14
    iput-object p1, p0, Lcom/meizu/flyme/activeview/json/Parallax;->type:Ljava/lang/String;

    .line 15
    return-void
.end method
