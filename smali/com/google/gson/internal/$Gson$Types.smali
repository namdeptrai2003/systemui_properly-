.class public final Lcom/google/gson/internal/$Gson$Types;
.super Ljava/lang/Object;
.source "$Gson$Types.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;,
        Lcom/google/gson/internal/$Gson$Types$GenericArrayTypeImpl;,
        Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;
    }
.end annotation


# static fields
.field static final EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    new-array v0, v0, [Ljava/lang/reflect/Type;

    sput-object v0, Lcom/google/gson/internal/$Gson$Types;->EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public static arrayOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/GenericArrayType;
    .locals 1
    .param p0, "componentType"    # Ljava/lang/reflect/Type;

    .prologue
    .line 68
    new-instance v0, Lcom/google/gson/internal/$Gson$Types$GenericArrayTypeImpl;

    invoke-direct {v0, p0}, Lcom/google/gson/internal/$Gson$Types$GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 8
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 96
    instance-of v4, p0, Ljava/lang/Class;

    if-nez v4, :cond_0

    .line 100
    instance-of v4, p0, Ljava/lang/reflect/ParameterizedType;

    if-nez v4, :cond_2

    .line 105
    instance-of v4, p0, Ljava/lang/reflect/GenericArrayType;

    if-nez v4, :cond_3

    .line 109
    instance-of v4, p0, Ljava/lang/reflect/WildcardType;

    if-nez v4, :cond_4

    .line 115
    return-object p0

    :cond_0
    move-object v0, p0

    .line 97
    check-cast v0, Ljava/lang/Class;

    .line 98
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v0

    :goto_0
    check-cast v4, Ljava/lang/reflect/Type;

    return-object v4

    :cond_1
    new-instance v4, Lcom/google/gson/internal/$Gson$Types$GenericArrayTypeImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/google/gson/internal/$Gson$Types;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/gson/internal/$Gson$Types$GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    goto :goto_0

    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    move-object v2, p0

    .line 101
    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .line 102
    .local v2, "p":Ljava/lang/reflect/ParameterizedType;
    new-instance v4, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 103
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v4

    .end local v2    # "p":Ljava/lang/reflect/ParameterizedType;
    :cond_3
    move-object v1, p0

    .line 106
    check-cast v1, Ljava/lang/reflect/GenericArrayType;

    .line 107
    .local v1, "g":Ljava/lang/reflect/GenericArrayType;
    new-instance v4, Lcom/google/gson/internal/$Gson$Types$GenericArrayTypeImpl;

    invoke-interface {v1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/gson/internal/$Gson$Types$GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    return-object v4

    .end local v1    # "g":Ljava/lang/reflect/GenericArrayType;
    :cond_4
    move-object v3, p0

    .line 110
    check-cast v3, Ljava/lang/reflect/WildcardType;

    .line 111
    .local v3, "w":Ljava/lang/reflect/WildcardType;
    new-instance v4, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;

    invoke-interface {v3}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v5

    invoke-interface {v3}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v4
.end method

.method static checkNotPrimitive(Ljava/lang/reflect/Type;)V
    .locals 2
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .prologue
    const/4 v0, 0x0

    .line 434
    instance-of v1, p0, Ljava/lang/Class;

    if-nez v1, :cond_1

    .end local p0    # "type":Ljava/lang/reflect/Type;
    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 435
    return-void

    .line 434
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_1
    check-cast p0, Ljava/lang/Class;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0
.end method

.method private static declaringClassOf(Ljava/lang/reflect/TypeVariable;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 427
    .local p0, "typeVariable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    .line 428
    .local v0, "genericDeclaration":Ljava/lang/reflect/GenericDeclaration;
    instance-of v1, v0, Ljava/lang/Class;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .end local v0    # "genericDeclaration":Ljava/lang/reflect/GenericDeclaration;
    :goto_0
    return-object v0

    .restart local v0    # "genericDeclaration":Ljava/lang/reflect/GenericDeclaration;
    :cond_0
    check-cast v0, Ljava/lang/Class;

    goto :goto_0
.end method

.method static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 154
    if-ne p0, p1, :cond_2

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public static equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z
    .locals 12
    .param p0, "a"    # Ljava/lang/reflect/Type;
    .param p1, "b"    # Ljava/lang/reflect/Type;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 161
    if-eq p0, p1, :cond_0

    .line 165
    instance-of v10, p0, Ljava/lang/Class;

    if-nez v10, :cond_1

    .line 169
    instance-of v10, p0, Ljava/lang/reflect/ParameterizedType;

    if-nez v10, :cond_2

    .line 181
    instance-of v10, p0, Ljava/lang/reflect/GenericArrayType;

    if-nez v10, :cond_7

    .line 190
    instance-of v10, p0, Ljava/lang/reflect/WildcardType;

    if-nez v10, :cond_9

    .line 200
    instance-of v10, p0, Ljava/lang/reflect/TypeVariable;

    if-nez v10, :cond_d

    .line 211
    return v9

    .line 163
    :cond_0
    return v8

    .line 167
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    return v8

    .line 170
    :cond_2
    instance-of v10, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v10, :cond_5

    move-object v2, p0

    .line 175
    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .local v2, "pa":Ljava/lang/reflect/ParameterizedType;
    move-object v3, p1

    .line 176
    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    .line 177
    .local v3, "pb":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v10

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/google/gson/internal/$Gson$Types;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    :cond_3
    :goto_0
    move v8, v9

    .line 179
    :cond_4
    return v8

    .line 171
    .end local v2    # "pa":Ljava/lang/reflect/ParameterizedType;
    .end local v3    # "pb":Ljava/lang/reflect/ParameterizedType;
    :cond_5
    return v9

    .line 178
    .restart local v2    # "pa":Ljava/lang/reflect/ParameterizedType;
    .restart local v3    # "pb":Ljava/lang/reflect/ParameterizedType;
    :cond_6
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v10

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 179
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v10

    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v11

    invoke-static {v10, v11}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    goto :goto_0

    .line 182
    .end local v2    # "pa":Ljava/lang/reflect/ParameterizedType;
    .end local v3    # "pb":Ljava/lang/reflect/ParameterizedType;
    :cond_7
    instance-of v8, p1, Ljava/lang/reflect/GenericArrayType;

    if-eqz v8, :cond_8

    move-object v0, p0

    .line 186
    check-cast v0, Ljava/lang/reflect/GenericArrayType;

    .local v0, "ga":Ljava/lang/reflect/GenericArrayType;
    move-object v1, p1

    .line 187
    check-cast v1, Ljava/lang/reflect/GenericArrayType;

    .line 188
    .local v1, "gb":Ljava/lang/reflect/GenericArrayType;
    invoke-interface {v0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v8

    invoke-interface {v1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/google/gson/internal/$Gson$Types;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    move-result v8

    return v8

    .line 183
    .end local v0    # "ga":Ljava/lang/reflect/GenericArrayType;
    .end local v1    # "gb":Ljava/lang/reflect/GenericArrayType;
    :cond_8
    return v9

    .line 191
    :cond_9
    instance-of v10, p1, Ljava/lang/reflect/WildcardType;

    if-eqz v10, :cond_b

    move-object v6, p0

    .line 195
    check-cast v6, Ljava/lang/reflect/WildcardType;

    .local v6, "wa":Ljava/lang/reflect/WildcardType;
    move-object v7, p1

    .line 196
    check-cast v7, Ljava/lang/reflect/WildcardType;

    .line 197
    .local v7, "wb":Ljava/lang/reflect/WildcardType;
    invoke-interface {v6}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v10

    invoke-interface {v7}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v11

    invoke-static {v10, v11}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_c

    :goto_1
    move v8, v9

    .line 198
    :cond_a
    return v8

    .line 192
    .end local v6    # "wa":Ljava/lang/reflect/WildcardType;
    .end local v7    # "wb":Ljava/lang/reflect/WildcardType;
    :cond_b
    return v9

    .line 198
    .restart local v6    # "wa":Ljava/lang/reflect/WildcardType;
    .restart local v7    # "wb":Ljava/lang/reflect/WildcardType;
    :cond_c
    invoke-interface {v6}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v10

    invoke-interface {v7}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v11

    invoke-static {v10, v11}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    goto :goto_1

    .line 201
    .end local v6    # "wa":Ljava/lang/reflect/WildcardType;
    .end local v7    # "wb":Ljava/lang/reflect/WildcardType;
    :cond_d
    instance-of v10, p1, Ljava/lang/reflect/TypeVariable;

    if-eqz v10, :cond_f

    move-object v4, p0

    .line 204
    check-cast v4, Ljava/lang/reflect/TypeVariable;

    .local v4, "va":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    move-object v5, p1

    .line 205
    check-cast v5, Ljava/lang/reflect/TypeVariable;

    .line 206
    .local v5, "vb":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {v4}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v10

    invoke-interface {v5}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v11

    if-eq v10, v11, :cond_10

    :goto_2
    move v8, v9

    .line 207
    :cond_e
    return v8

    .line 202
    .end local v4    # "va":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    .end local v5    # "vb":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_f
    return v9

    .line 207
    .restart local v4    # "va":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    .restart local v5    # "vb":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_10
    invoke-interface {v4}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v5}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_e

    goto :goto_2
.end method

.method public static getArrayComponentType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1
    .param p0, "array"    # Ljava/lang/reflect/Type;

    .prologue
    .line 280
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    if-nez v0, :cond_0

    .line 281
    check-cast p0, Ljava/lang/Class;

    .line 282
    .end local p0    # "array":Ljava/lang/reflect/Type;
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    :goto_0
    return-object v0

    .line 280
    .restart local p0    # "array":Ljava/lang/reflect/Type;
    :cond_0
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .line 281
    .end local p0    # "array":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCollectionElementType(Ljava/lang/reflect/Type;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 3
    .param p0, "context"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .local p1, "contextRawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    const-class v1, Ljava/util/Collection;

    .line 290
    invoke-static {p0, p1, v1}, Lcom/google/gson/internal/$Gson$Types;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 292
    .local v0, "collectionType":Ljava/lang/reflect/Type;
    instance-of v1, v0, Ljava/lang/reflect/WildcardType;

    if-nez v1, :cond_0

    .line 295
    :goto_0
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v1, :cond_1

    const-class v1, Ljava/lang/Object;

    .line 298
    return-object v1

    .line 293
    :cond_0
    check-cast v0, Ljava/lang/reflect/WildcardType;

    .end local v0    # "collectionType":Ljava/lang/reflect/Type;
    invoke-interface {v0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v0, v1, v2

    .restart local v0    # "collectionType":Ljava/lang/reflect/Type;
    goto :goto_0

    .line 296
    :cond_1
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .end local v0    # "collectionType":Ljava/lang/reflect/Type;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    aget-object v1, v1, v2

    return-object v1
.end method

.method static getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 6
    .param p0, "context"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 229
    .local p1, "rawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "toResolve":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq p2, p1, :cond_1

    .line 234
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-nez v4, :cond_2

    .line 246
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 259
    :goto_0
    return-object p2

    .line 230
    :cond_1
    return-object p0

    .line 235
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v1

    .local v1, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 236
    .local v0, "i":I
    array-length v2, v1

    .local v2, "length":I
    :goto_1
    if-ge v0, v2, :cond_0

    .line 237
    aget-object v4, v1, v0

    if-eq v4, p2, :cond_3

    .line 239
    aget-object v4, v1, v0

    invoke-virtual {p2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 236
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 238
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v4

    aget-object v4, v4, v0

    return-object v4

    .line 240
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    move-result-object v4

    aget-object v4, v4, v0

    aget-object v5, v1, v0

    invoke-static {v4, v5, p2}, Lcom/google/gson/internal/$Gson$Types;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v4

    return-object v4

    .line 248
    .end local v0    # "i":I
    .end local v1    # "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v2    # "length":I
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    .line 249
    .local v3, "rawSupertype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eq v3, p2, :cond_7

    .line 251
    invoke-virtual {p2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 254
    move-object p1, v3

    .end local v3    # "rawSupertype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_6
    const-class v4, Ljava/lang/Object;

    .line 247
    if-ne p1, v4, :cond_5

    goto :goto_0

    .line 250
    .restart local v3    # "rawSupertype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v4

    return-object v4

    .line 252
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-static {v4, v3, p2}, Lcom/google/gson/internal/$Gson$Types;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v4

    return-object v4
.end method

.method public static getMapKeyAndValueTypes(Ljava/lang/reflect/Type;Ljava/lang/Class;)[Ljava/lang/reflect/Type;
    .locals 6
    .param p0, "context"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .local p1, "contextRawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-class v2, Ljava/util/Properties;

    .line 311
    if-eq p0, v2, :cond_0

    const-class v2, Ljava/util/Map;

    .line 315
    invoke-static {p0, p1, v2}, Lcom/google/gson/internal/$Gson$Types;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 317
    .local v1, "mapType":Ljava/lang/reflect/Type;
    instance-of v2, v1, Ljava/lang/reflect/ParameterizedType;

    if-nez v2, :cond_1

    .line 321
    new-array v2, v3, [Ljava/lang/reflect/Type;

    const-class v3, Ljava/lang/Object;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/Object;

    aput-object v3, v2, v5

    return-object v2

    .line 312
    .end local v1    # "mapType":Ljava/lang/reflect/Type;
    :cond_0
    new-array v2, v3, [Ljava/lang/reflect/Type;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v5

    return-object v2

    .restart local v1    # "mapType":Ljava/lang/reflect/Type;
    :cond_1
    move-object v0, v1

    .line 318
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 319
    .local v0, "mapParameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    return-object v2
.end method

.method public static getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 7
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 120
    instance-of v4, p0, Ljava/lang/Class;

    if-nez v4, :cond_0

    .line 124
    instance-of v4, p0, Ljava/lang/reflect/ParameterizedType;

    if-nez v4, :cond_1

    .line 134
    instance-of v4, p0, Ljava/lang/reflect/GenericArrayType;

    if-nez v4, :cond_2

    .line 138
    instance-of v4, p0, Ljava/lang/reflect/TypeVariable;

    if-nez v4, :cond_3

    .line 143
    instance-of v4, p0, Ljava/lang/reflect/WildcardType;

    if-nez v4, :cond_4

    .line 147
    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 148
    .local v0, "className":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Expected a Class, ParameterizedType, or GenericArrayType, but <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "> is of type "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 122
    .end local v0    # "className":Ljava/lang/String;
    :cond_0
    check-cast p0, Ljava/lang/Class;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    return-object p0

    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_1
    move-object v2, p0

    .line 125
    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .line 130
    .local v2, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 131
    .local v3, "rawType":Ljava/lang/reflect/Type;
    instance-of v4, v3, Ljava/lang/Class;

    invoke-static {v4}, Lcom/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 132
    check-cast v3, Ljava/lang/Class;

    .end local v3    # "rawType":Ljava/lang/reflect/Type;
    return-object v3

    .line 135
    .end local v2    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    :cond_2
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 136
    .local v1, "componentType":Ljava/lang/reflect/Type;
    invoke-static {v1}, Lcom/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    return-object v4

    .end local v1    # "componentType":Ljava/lang/reflect/Type;
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_3
    const-class v4, Ljava/lang/Object;

    .line 141
    return-object v4

    .line 144
    :cond_4
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    aget-object v4, v4, v5

    invoke-static {v4}, Lcom/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v4

    return-object v4

    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_5
    const-string/jumbo v0, "null"

    goto :goto_0
.end method

.method static getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 1
    .param p0, "context"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 270
    .local p1, "contextRawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "supertype":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    invoke-static {v0}, Lcom/google/gson/internal/$Gson$Preconditions;->checkArgument(Z)V

    .line 272
    invoke-static {p0, p1, p2}, Lcom/google/gson/internal/$Gson$Types;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 271
    invoke-static {p0, p1, v0}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v0

    return-object v0
.end method

.method static hashCodeOrZero(Ljava/lang/Object;)I
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 216
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method private static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p0, "array"    # [Ljava/lang/Object;
    .param p1, "toFind"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 414
    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-lt v0, v1, :cond_0

    .line 419
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 415
    :cond_0
    aget-object v1, p0, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 414
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 416
    :cond_1
    return v0
.end method

.method public static varargs newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;
    .locals 1
    .param p0, "ownerType"    # Ljava/lang/reflect/Type;
    .param p1, "rawType"    # Ljava/lang/reflect/Type;
    .param p2, "typeArguments"    # [Ljava/lang/reflect/Type;

    .prologue
    .line 58
    new-instance v0, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 23
    .param p0, "context"    # Ljava/lang/reflect/Type;
    .param p2, "toResolve"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 327
    .local p1, "contextRawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/TypeVariable;

    move/from16 v21, v0

    if-nez v21, :cond_2

    .line 334
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/Class;

    move/from16 v21, v0

    if-nez v21, :cond_3

    .line 342
    :cond_1
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/GenericArrayType;

    move/from16 v21, v0

    if-nez v21, :cond_5

    .line 350
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v21, v0

    if-nez v21, :cond_7

    .line 372
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/WildcardType;

    move/from16 v21, v0

    if-nez v21, :cond_d

    .line 391
    return-object p2

    :cond_2
    move-object/from16 v19, p2

    .line 328
    check-cast v19, Ljava/lang/reflect/TypeVariable;

    .line 329
    .local v19, "typeVariable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/google/gson/internal/$Gson$Types;->resolveTypeVariable(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object p2

    .line 330
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 331
    return-object p2

    .end local v19    # "typeVariable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_3
    move-object/from16 v21, p2

    .line 334
    check-cast v21, Ljava/lang/Class;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->isArray()Z

    move-result v21

    if-eqz v21, :cond_1

    move-object/from16 v10, p2

    .line 335
    check-cast v10, Ljava/lang/Class;

    .line 336
    .local v10, "original":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v10}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    .line 337
    .local v5, "componentType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v5}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v8

    .line 338
    .local v8, "newComponentType":Ljava/lang/reflect/Type;
    if-eq v5, v8, :cond_4

    .line 340
    invoke-static {v8}, Lcom/google/gson/internal/$Gson$Types;->arrayOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/GenericArrayType;

    move-result-object v10

    .end local v10    # "original":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_4
    return-object v10

    .end local v5    # "componentType":Ljava/lang/reflect/Type;
    .end local v8    # "newComponentType":Ljava/lang/reflect/Type;
    :cond_5
    move-object/from16 v11, p2

    .line 343
    check-cast v11, Ljava/lang/reflect/GenericArrayType;

    .line 344
    .local v11, "original":Ljava/lang/reflect/GenericArrayType;
    invoke-interface {v11}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 345
    .restart local v5    # "componentType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v5}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v8

    .line 346
    .restart local v8    # "newComponentType":Ljava/lang/reflect/Type;
    if-eq v5, v8, :cond_6

    .line 348
    invoke-static {v8}, Lcom/google/gson/internal/$Gson$Types;->arrayOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/GenericArrayType;

    move-result-object v11

    .end local v11    # "original":Ljava/lang/reflect/GenericArrayType;
    :cond_6
    return-object v11

    .end local v5    # "componentType":Ljava/lang/reflect/Type;
    .end local v8    # "newComponentType":Ljava/lang/reflect/Type;
    :cond_7
    move-object/from16 v12, p2

    .line 351
    check-cast v12, Ljava/lang/reflect/ParameterizedType;

    .line 352
    .local v12, "original":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v12}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v16

    .line 353
    .local v16, "ownerType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v16

    invoke-static {v0, v1, v2}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v9

    .line 354
    .local v9, "newOwnerType":Ljava/lang/reflect/Type;
    move-object/from16 v0, v16

    if-ne v9, v0, :cond_8

    const/4 v4, 0x0

    .line 356
    .local v4, "changed":Z
    :goto_0
    invoke-interface {v12}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .local v3, "args":[Ljava/lang/reflect/Type;
    const/16 v18, 0x0

    .line 357
    .local v18, "t":I
    array-length v6, v3

    .end local v4    # "changed":Z
    .local v6, "length":I
    :goto_1
    move/from16 v0, v18

    if-lt v0, v6, :cond_9

    .line 368
    if-nez v4, :cond_c

    .line 369
    .end local v12    # "original":Ljava/lang/reflect/ParameterizedType;
    :goto_2
    return-object v12

    .end local v3    # "args":[Ljava/lang/reflect/Type;
    .end local v6    # "length":I
    .end local v18    # "t":I
    .restart local v12    # "original":Ljava/lang/reflect/ParameterizedType;
    :cond_8
    const/4 v4, 0x1

    .line 354
    goto :goto_0

    .line 358
    .restart local v3    # "args":[Ljava/lang/reflect/Type;
    .restart local v6    # "length":I
    .restart local v18    # "t":I
    :cond_9
    aget-object v21, v3, v18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v17

    .line 359
    .local v17, "resolvedTypeArgument":Ljava/lang/reflect/Type;
    aget-object v21, v3, v18

    move-object/from16 v0, v17

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_a

    .line 357
    :goto_3
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 360
    :cond_a
    if-eqz v4, :cond_b

    .line 364
    :goto_4
    aput-object v17, v3, v18

    goto :goto_3

    .line 361
    :cond_b
    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "args":[Ljava/lang/reflect/Type;
    check-cast v3, [Ljava/lang/reflect/Type;

    .line 362
    .restart local v3    # "args":[Ljava/lang/reflect/Type;
    const/4 v4, 0x1

    .local v4, "changed":Z
    goto :goto_4

    .line 369
    .end local v4    # "changed":Z
    .end local v17    # "resolvedTypeArgument":Ljava/lang/reflect/Type;
    :cond_c
    invoke-interface {v12}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-static {v9, v0, v3}, Lcom/google/gson/internal/$Gson$Types;->newParameterizedTypeWithOwner(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)Ljava/lang/reflect/ParameterizedType;

    move-result-object v12

    goto :goto_2

    .end local v3    # "args":[Ljava/lang/reflect/Type;
    .end local v6    # "length":I
    .end local v9    # "newOwnerType":Ljava/lang/reflect/Type;
    .end local v12    # "original":Ljava/lang/reflect/ParameterizedType;
    .end local v16    # "ownerType":Ljava/lang/reflect/Type;
    .end local v18    # "t":I
    :cond_d
    move-object/from16 v13, p2

    .line 373
    check-cast v13, Ljava/lang/reflect/WildcardType;

    .line 374
    .local v13, "original":Ljava/lang/reflect/WildcardType;
    invoke-interface {v13}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v14

    .line 375
    .local v14, "originalLowerBound":[Ljava/lang/reflect/Type;
    invoke-interface {v13}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v15

    .line 377
    .local v15, "originalUpperBound":[Ljava/lang/reflect/Type;
    array-length v0, v14

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_f

    .line 382
    array-length v0, v15

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_10

    .line 388
    :cond_e
    return-object v13

    :cond_f
    const/16 v21, 0x0

    .line 378
    aget-object v21, v14, v21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v7

    .local v7, "lowerBound":Ljava/lang/reflect/Type;
    const/16 v21, 0x0

    .line 379
    aget-object v21, v14, v21

    move-object/from16 v0, v21

    if-eq v7, v0, :cond_e

    .line 380
    invoke-static {v7}, Lcom/google/gson/internal/$Gson$Types;->supertypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;

    move-result-object v21

    return-object v21

    .end local v7    # "lowerBound":Ljava/lang/reflect/Type;
    :cond_10
    const/16 v21, 0x0

    .line 383
    aget-object v21, v15, v21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-static {v0, v1, v2}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v20

    .local v20, "upperBound":Ljava/lang/reflect/Type;
    const/16 v21, 0x0

    .line 384
    aget-object v21, v15, v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_e

    .line 385
    invoke-static/range {v20 .. v20}, Lcom/google/gson/internal/$Gson$Types;->subtypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;

    move-result-object v21

    return-object v21
.end method

.method static resolveTypeVariable(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
    .locals 4
    .param p0, "context"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 397
    .local p1, "contextRawType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "unknown":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-static {p2}, Lcom/google/gson/internal/$Gson$Types;->declaringClassOf(Ljava/lang/reflect/TypeVariable;)Ljava/lang/Class;

    move-result-object v1

    .line 400
    .local v1, "declaredByRaw":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_0

    .line 404
    invoke-static {p0, p1, v1}, Lcom/google/gson/internal/$Gson$Types;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v0

    .line 405
    .local v0, "declaredBy":Ljava/lang/reflect/Type;
    instance-of v3, v0, Ljava/lang/reflect/ParameterizedType;

    if-nez v3, :cond_1

    .line 410
    return-object p2

    .line 401
    .end local v0    # "declaredBy":Ljava/lang/reflect/Type;
    :cond_0
    return-object p2

    .line 406
    .restart local v0    # "declaredBy":Ljava/lang/reflect/Type;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/google/gson/internal/$Gson$Types;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 407
    .local v2, "index":I
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .end local v0    # "declaredBy":Ljava/lang/reflect/Type;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    aget-object v3, v3, v2

    return-object v3
.end method

.method public static subtypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;
    .locals 3
    .param p0, "bound"    # Ljava/lang/reflect/Type;

    .prologue
    .line 78
    new-instance v0, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object v2, Lcom/google/gson/internal/$Gson$Types;->EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

    invoke-direct {v0, v1, v2}, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static supertypeOf(Ljava/lang/reflect/Type;)Ljava/lang/reflect/WildcardType;
    .locals 5
    .param p0, "bound"    # Ljava/lang/reflect/Type;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 87
    new-instance v0, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;

    new-array v1, v4, [Ljava/lang/reflect/Type;

    const-class v2, Ljava/lang/Object;

    aput-object v2, v1, v3

    new-array v2, v4, [Ljava/lang/reflect/Type;

    aput-object p0, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    return-object v0
.end method

.method public static typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 220
    instance-of v0, p0, Ljava/lang/Class;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    check-cast p0, Ljava/lang/Class;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
