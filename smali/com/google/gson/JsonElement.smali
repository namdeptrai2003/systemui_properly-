.class public abstract Lcom/google/gson/JsonElement;
.super Ljava/lang/Object;
.source "JsonElement.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAsJsonArray()Lcom/google/gson/JsonArray;
    .locals 2

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This is not a JSON Array."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    :cond_0
    check-cast p0, Lcom/google/gson/JsonArray;

    .end local p0    # "this":Lcom/google/gson/JsonElement;
    return-object p0
.end method

.method public getAsJsonObject()Lcom/google/gson/JsonObject;
    .locals 3

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonObject()Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Not a JSON Object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    check-cast p0, Lcom/google/gson/JsonObject;

    .end local p0    # "this":Lcom/google/gson/JsonElement;
    return-object p0
.end method

.method public getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;
    .locals 2

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "This is not a JSON Primitive."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_0
    check-cast p0, Lcom/google/gson/JsonPrimitive;

    .end local p0    # "this":Lcom/google/gson/JsonElement;
    return-object p0
.end method

.method public getAsString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 191
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isJsonArray()Z
    .locals 1

    .prologue
    .line 46
    instance-of v0, p0, Lcom/google/gson/JsonArray;

    return v0
.end method

.method public isJsonNull()Z
    .locals 1

    .prologue
    .line 74
    instance-of v0, p0, Lcom/google/gson/JsonNull;

    return v0
.end method

.method public isJsonObject()Z
    .locals 1

    .prologue
    .line 55
    instance-of v0, p0, Lcom/google/gson/JsonObject;

    return v0
.end method

.method public isJsonPrimitive()Z
    .locals 1

    .prologue
    .line 64
    instance-of v0, p0, Lcom/google/gson/JsonPrimitive;

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 321
    :try_start_0
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 322
    .local v2, "stringWriter":Ljava/io/StringWriter;
    new-instance v1, Lcom/google/gson/stream/JsonWriter;

    invoke-direct {v1, v2}, Lcom/google/gson/stream/JsonWriter;-><init>(Ljava/io/Writer;)V

    .line 323
    .local v1, "jsonWriter":Lcom/google/gson/stream/JsonWriter;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/google/gson/stream/JsonWriter;->setLenient(Z)V

    .line 324
    invoke-static {p0, v1}, Lcom/google/gson/internal/Streams;->write(Lcom/google/gson/JsonElement;Lcom/google/gson/stream/JsonWriter;)V

    .line 325
    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .end local v1    # "jsonWriter":Lcom/google/gson/stream/JsonWriter;
    .end local v2    # "stringWriter":Ljava/io/StringWriter;
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
.end method
