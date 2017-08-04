.class public final Lcom/google/gson/GsonBuilder;
.super Ljava/lang/Object;
.source "GsonBuilder.java"


# instance fields
.field private complexMapKeySerialization:Z

.field private datePattern:Ljava/lang/String;

.field private dateStyle:I

.field private escapeHtmlChars:Z

.field private excluder:Lcom/google/gson/internal/Excluder;

.field private final factories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

.field private generateNonExecutableJson:Z

.field private final hierarchyFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/gson/TypeAdapterFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final instanceCreators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/reflect/Type;",
            "Lcom/google/gson/InstanceCreator",
            "<*>;>;"
        }
    .end annotation
.end field

.field private lenient:Z

.field private longSerializationPolicy:Lcom/google/gson/LongSerializationPolicy;

.field private prettyPrinting:Z

.field private serializeNulls:Z

.field private serializeSpecialFloatingPointValues:Z

.field private timeStyle:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    sget-object v0, Lcom/google/gson/internal/Excluder;->DEFAULT:Lcom/google/gson/internal/Excluder;

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->excluder:Lcom/google/gson/internal/Excluder;

    .line 80
    sget-object v0, Lcom/google/gson/LongSerializationPolicy;->DEFAULT:Lcom/google/gson/LongSerializationPolicy;

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Lcom/google/gson/LongSerializationPolicy;

    .line 81
    sget-object v0, Lcom/google/gson/FieldNamingPolicy;->IDENTITY:Lcom/google/gson/FieldNamingPolicy;

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->factories:Ljava/util/List;

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    .line 87
    iput-boolean v1, p0, Lcom/google/gson/GsonBuilder;->serializeNulls:Z

    .line 89
    iput v2, p0, Lcom/google/gson/GsonBuilder;->dateStyle:I

    .line 90
    iput v2, p0, Lcom/google/gson/GsonBuilder;->timeStyle:I

    .line 91
    iput-boolean v1, p0, Lcom/google/gson/GsonBuilder;->complexMapKeySerialization:Z

    .line 92
    iput-boolean v1, p0, Lcom/google/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    .line 93
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/gson/GsonBuilder;->escapeHtmlChars:Z

    .line 94
    iput-boolean v1, p0, Lcom/google/gson/GsonBuilder;->prettyPrinting:Z

    .line 95
    iput-boolean v1, p0, Lcom/google/gson/GsonBuilder;->generateNonExecutableJson:Z

    .line 96
    iput-boolean v1, p0, Lcom/google/gson/GsonBuilder;->lenient:Z

    .line 105
    return-void
.end method

.method private addTypeAdaptersForDate(Ljava/lang/String;IILjava/util/List;)V
    .locals 4
    .param p1, "datePattern"    # Ljava/lang/String;
    .param p2, "dateStyle"    # I
    .param p3, "timeStyle"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/List",
            "<",
            "Lcom/google/gson/TypeAdapterFactory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p4, "factories":Ljava/util/List;, "Ljava/util/List<Lcom/google/gson/TypeAdapterFactory;>;"
    const/4 v3, 0x2

    .line 578
    if-nez p1, :cond_2

    .line 580
    :cond_0
    if-ne p2, v3, :cond_3

    .line 583
    :cond_1
    return-void

    :cond_2
    const-string/jumbo v1, ""

    .line 578
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 579
    new-instance v0, Lcom/google/gson/DefaultDateTypeAdapter;

    invoke-direct {v0, p1}, Lcom/google/gson/DefaultDateTypeAdapter;-><init>(Ljava/lang/String;)V

    .local v0, "dateTypeAdapter":Lcom/google/gson/DefaultDateTypeAdapter;
    :goto_0
    const-class v1, Ljava/util/Date;

    .line 586
    invoke-static {v1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/gson/internal/bind/TreeTypeAdapter;->newFactory(Lcom/google/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/sql/Timestamp;

    .line 587
    invoke-static {v1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/gson/internal/bind/TreeTypeAdapter;->newFactory(Lcom/google/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Ljava/sql/Date;

    .line 588
    invoke-static {v1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/Class;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/google/gson/internal/bind/TreeTypeAdapter;->newFactory(Lcom/google/gson/reflect/TypeToken;Ljava/lang/Object;)Lcom/google/gson/TypeAdapterFactory;

    move-result-object v1

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 589
    return-void

    .line 580
    .end local v0    # "dateTypeAdapter":Lcom/google/gson/DefaultDateTypeAdapter;
    :cond_3
    if-eq p3, v3, :cond_1

    .line 581
    new-instance v0, Lcom/google/gson/DefaultDateTypeAdapter;

    invoke-direct {v0, p2, p3}, Lcom/google/gson/DefaultDateTypeAdapter;-><init>(II)V

    .restart local v0    # "dateTypeAdapter":Lcom/google/gson/DefaultDateTypeAdapter;
    goto :goto_0
.end method


# virtual methods
.method public create()Lcom/google/gson/Gson;
    .locals 13

    .prologue
    .line 563
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 564
    .local v12, "factories":Ljava/util/List;, "Ljava/util/List<Lcom/google/gson/TypeAdapterFactory;>;"
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->factories:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 565
    invoke-static {v12}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 566
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->hierarchyFactories:Ljava/util/List;

    invoke-interface {v12, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 567
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->datePattern:Ljava/lang/String;

    iget v1, p0, Lcom/google/gson/GsonBuilder;->dateStyle:I

    iget v2, p0, Lcom/google/gson/GsonBuilder;->timeStyle:I

    invoke-direct {p0, v0, v1, v2, v12}, Lcom/google/gson/GsonBuilder;->addTypeAdaptersForDate(Ljava/lang/String;IILjava/util/List;)V

    .line 569
    new-instance v0, Lcom/google/gson/Gson;

    iget-object v1, p0, Lcom/google/gson/GsonBuilder;->excluder:Lcom/google/gson/internal/Excluder;

    iget-object v2, p0, Lcom/google/gson/GsonBuilder;->fieldNamingPolicy:Lcom/google/gson/FieldNamingStrategy;

    iget-object v3, p0, Lcom/google/gson/GsonBuilder;->instanceCreators:Ljava/util/Map;

    iget-boolean v4, p0, Lcom/google/gson/GsonBuilder;->serializeNulls:Z

    iget-boolean v5, p0, Lcom/google/gson/GsonBuilder;->complexMapKeySerialization:Z

    iget-boolean v6, p0, Lcom/google/gson/GsonBuilder;->generateNonExecutableJson:Z

    iget-boolean v7, p0, Lcom/google/gson/GsonBuilder;->escapeHtmlChars:Z

    iget-boolean v8, p0, Lcom/google/gson/GsonBuilder;->prettyPrinting:Z

    iget-boolean v9, p0, Lcom/google/gson/GsonBuilder;->lenient:Z

    iget-boolean v10, p0, Lcom/google/gson/GsonBuilder;->serializeSpecialFloatingPointValues:Z

    iget-object v11, p0, Lcom/google/gson/GsonBuilder;->longSerializationPolicy:Lcom/google/gson/LongSerializationPolicy;

    invoke-direct/range {v0 .. v12}, Lcom/google/gson/Gson;-><init>(Lcom/google/gson/internal/Excluder;Lcom/google/gson/FieldNamingStrategy;Ljava/util/Map;ZZZZZZZLcom/google/gson/LongSerializationPolicy;Ljava/util/List;)V

    return-object v0
.end method

.method public excludeFieldsWithoutExposeAnnotation()Lcom/google/gson/GsonBuilder;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/gson/GsonBuilder;->excluder:Lcom/google/gson/internal/Excluder;

    invoke-virtual {v0}, Lcom/google/gson/internal/Excluder;->excludeFieldsWithoutExposeAnnotation()Lcom/google/gson/internal/Excluder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/GsonBuilder;->excluder:Lcom/google/gson/internal/Excluder;

    .line 157
    return-object p0
.end method
