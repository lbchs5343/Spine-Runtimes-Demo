.class public final Lg/eih;
.super Ljava/io/File;
.source "SourceFile"


# instance fields
.field childCount:I

.field final directory:Z

.field final extension:Ljava/lang/String;

.field formattedDate:Ljava/lang/String;

.field formattedGridDate:Ljava/lang/String;

.field final modifiedTime:J

.field final sizeBytes:J

.field private final source:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 3

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lg/eih;->source:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    iput-boolean v0, p0, Lg/eih;->directory:Z

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    iput-wide v1, p0, Lg/eih;->modifiedTime:J

    if-eqz v0, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    :goto_0
    iput-wide v1, p0, Lg/eih;->sizeBytes:J

    if-eqz v0, :cond_1

    const/4 v1, -0x2

    goto :goto_1

    :cond_1
    const/4 v1, -0x1

    :goto_1
    iput v1, p0, Lg/eih;->childCount:I

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-nez v0, :cond_3

    if-gtz v1, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_3
    :goto_2
    const-string p1, ""

    :goto_3
    iput-object p1, p0, Lg/eih;->extension:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Lg/eih;->source:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    array-length v0, v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return v0
.end method

.method public final isDirectory()Z
    .locals 1

    iget-boolean v0, p0, Lg/eih;->directory:Z

    return v0
.end method

.method public final isFile()Z
    .locals 1

    iget-boolean v0, p0, Lg/eih;->directory:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final lastModified()J
    .locals 2

    iget-wide v0, p0, Lg/eih;->modifiedTime:J

    return-wide v0
.end method

.method public final length()J
    .locals 2

    iget-wide v0, p0, Lg/eih;->sizeBytes:J

    return-wide v0
.end method
