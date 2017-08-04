.class public Lcom/alibaba/fastjson/serializer/EnumerationSerializer;
.super Ljava/lang/Object;
.source "EnumerationSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static instance:Lcom/alibaba/fastjson/serializer/EnumerationSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/alibaba/fastjson/serializer/EnumerationSerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/EnumerationSerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/EnumerationSerializer;->instance:Lcom/alibaba/fastjson/serializer/EnumerationSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 13
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .param p5, "features"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 13
    iget-object v11, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 15
    .local v11, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-eqz p2, :cond_1

    const/4 v5, 0x0

    .line 21
    .local v5, "elementType":Ljava/lang/reflect/Type;
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v11, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v2

    if-nez v2, :cond_2

    .end local v5    # "elementType":Ljava/lang/reflect/Type;
    :cond_0
    :goto_0
    move-object v8, p2

    .line 28
    check-cast v8, Ljava/util/Enumeration;

    .line 30
    .local v8, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    iget-object v7, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .local v7, "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    const/4 v2, 0x0

    .line 31
    move-object/from16 v0, p3

    invoke-virtual {p1, v7, p2, v0, v2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    const/4 v9, 0x0

    .line 35
    .local v9, "i":I
    const/16 v2, 0x5b

    :try_start_0
    invoke-virtual {v11, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v10, v9

    .line 36
    .end local v9    # "i":I
    .local v10, "i":I
    :goto_1
    :try_start_1
    invoke-interface {v8}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_3

    .line 50
    const/16 v2, 0x5d

    invoke-virtual {v11, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 52
    iput-object v7, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 54
    return-void

    .line 16
    .end local v7    # "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    .end local v8    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v10    # "i":I
    :cond_1
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNullListAsEmpty:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v11, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull(Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 17
    return-void

    .line 22
    .restart local v5    # "elementType":Ljava/lang/reflect/Type;
    :cond_2
    move-object/from16 v0, p4

    instance-of v2, v0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_0

    move-object/from16 v12, p4

    .line 23
    check-cast v12, Ljava/lang/reflect/ParameterizedType;

    .line 24
    .local v12, "param":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v12}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v4, 0x0

    aget-object v5, v2, v4

    .local v5, "elementType":Ljava/lang/reflect/Type;
    goto :goto_0

    .line 37
    .end local v5    # "elementType":Ljava/lang/reflect/Type;
    .end local v12    # "param":Ljava/lang/reflect/ParameterizedType;
    .restart local v7    # "context":Lcom/alibaba/fastjson/serializer/SerialContext;
    .restart local v8    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .restart local v10    # "i":I
    :cond_3
    :try_start_2
    invoke-interface {v8}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v3

    .line 38
    .local v3, "item":Ljava/lang/Object;
    add-int/lit8 v9, v10, 0x1

    .end local v10    # "i":I
    .restart local v9    # "i":I
    if-nez v10, :cond_4

    .line 42
    :goto_2
    if-eqz v3, :cond_5

    .line 47
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v1

    .line 48
    .local v1, "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    add-int/lit8 v2, v9, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x0

    move-object v2, p1

    invoke-interface/range {v1 .. v6}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    move v10, v9

    .line 49
    .end local v9    # "i":I
    .restart local v10    # "i":I
    goto :goto_1

    .line 39
    .end local v1    # "itemSerializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .end local v10    # "i":I
    .restart local v9    # "i":I
    :cond_4
    const/16 v2, 0x2c

    invoke-virtual {v11, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->append(C)Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 53
    .end local v3    # "item":Ljava/lang/Object;
    :catchall_0
    move-exception v2

    .line 52
    :goto_3
    iput-object v7, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    throw v2

    .line 43
    .restart local v3    # "item":Ljava/lang/Object;
    :cond_5
    :try_start_4
    invoke-virtual {v11}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move v10, v9

    .line 44
    .end local v9    # "i":I
    .restart local v10    # "i":I
    goto :goto_1

    .line 53
    .end local v3    # "item":Ljava/lang/Object;
    :catchall_1
    move-exception v2

    move v9, v10

    .end local v10    # "i":I
    .restart local v9    # "i":I
    goto :goto_3
.end method
