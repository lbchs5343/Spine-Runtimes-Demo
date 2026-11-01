.class public final enum Lg/ag;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum APK:Lg/ag;

.field public static final enum ARCHIVE:Lg/ag;

.field public static final enum ARSC:Lg/ag;

.field public static final enum CODE:Lg/ag;

.field public static final enum FONT:Lg/ag;

.field public static final enum HTML:Lg/ag;

.field public static final enum IMG:Lg/ag;

.field public static final enum JSON:Lg/ag;

.field public static final enum LIB:Lg/ag;

.field public static final enum MANIFEST:Lg/ag;

.field public static final enum SOUNDS:Lg/ag;

.field public static final enum TEXT:Lg/ag;

.field public static final enum UNKNOWN:Lg/ag;

.field public static final enum UNKNOWN_BIN:Lg/ag;

.field public static final enum VIDEOS:Lg/ag;

.field public static final enum XML:Lg/ag;

.field public static final a:Ljava/util/HashMap;

.field public static final synthetic b:[Lg/ag;


# instance fields
.field private final contentType:Lg/ue;

.field private final exts:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 35

    new-instance v0, Lg/ag;

    sget-object v1, Lg/ue;->CONTENT_BINARY:Lg/ue;

    const-string v2, ".jar"

    const-string v3, ".class"

    const-string v4, ".dex"

    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "CODE"

    const/4 v4, 0x0

    invoke-direct {v0, v3, v4, v1, v2}, Lg/ag;-><init>(Ljava/lang/String;ILg/ue;[Ljava/lang/String;)V

    sput-object v0, Lg/ag;->CODE:Lg/ag;

    new-instance v2, Lg/ag;

    sget-object v3, Lg/ue;->CONTENT_TEXT:Lg/ue;

    const-string v5, ".xml"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const-string v6, "XML"

    const/4 v7, 0x1

    invoke-direct {v2, v6, v7, v3, v5}, Lg/ag;-><init>(Ljava/lang/String;ILg/ue;[Ljava/lang/String;)V

    sput-object v2, Lg/ag;->XML:Lg/ag;

    new-instance v5, Lg/ag;

    const-string v6, ".arsc"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v8, "ARSC"

    const/4 v9, 0x2

    invoke-direct {v5, v8, v9, v3, v6}, Lg/ag;-><init>(Ljava/lang/String;ILg/ue;[Ljava/lang/String;)V

    sput-object v5, Lg/ag;->ARSC:Lg/ag;

    new-instance v6, Lg/ag;

    const-string v8, ".apkm"

    const-string v10, ".apks"

    const-string v11, ".apk"

    filled-new-array {v11, v8, v10}, [Ljava/lang/String;

    move-result-object v8

    const-string v10, "APK"

    const/4 v11, 0x3

    invoke-direct {v6, v10, v11, v1, v8}, Lg/ag;-><init>(Ljava/lang/String;ILg/ue;[Ljava/lang/String;)V

    sput-object v6, Lg/ag;->APK:Lg/ag;

    new-instance v8, Lg/ag;

    const-string v10, ".ttc"

    const-string v12, ".otf"

    const-string v13, ".ttf"

    filled-new-array {v13, v10, v12}, [Ljava/lang/String;

    move-result-object v10

    const-string v12, "FONT"

    const/4 v13, 0x4

    invoke-direct {v8, v12, v13, v1, v10}, Lg/ag;-><init>(Ljava/lang/String;ILg/ue;[Ljava/lang/String;)V

    sput-object v8, Lg/ag;->FONT:Lg/ag;

    new-instance v10, Lg/ag;

    const-string v19, ".bmp"

    const-string v20, ".tiff"

    const-string v14, ".png"

    const-string v15, ".gif"

    const-string v16, ".jpg"

    const-string v17, ".jpeg"

    const-string v18, ".webp"

    filled-new-array/range {v14 .. v20}, [Ljava/lang/String;

    move-result-object v12

    const-string v14, "IMG"

    const/4 v15, 0x5

    invoke-direct {v10, v14, v15, v1, v12}, Lg/ag;-><init>(Ljava/lang/String;ILg/ue;[Ljava/lang/String;)V

    sput-object v10, Lg/ag;->IMG:Lg/ag;

    new-instance v12, Lg/ag;

    const-string v29, ".tgz"

    const-string v30, ".bz2"

    const-string v16, ".zip"

    const-string v17, ".rar"

    const-string v18, ".7zip"

    const-string v19, ".7z"

    const-string v20, ".arj"

    const-string v21, ".tar"

    const-string v22, ".gzip"

    const-string v23, ".bzip"

    const-string v24, ".bzip2"

    const-string v25, ".cab"

    const-string v26, ".cpio"

    const-string v27, ".ar"

    const-string v28, ".gz"

    filled-new-array/range {v16 .. v30}, [Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x1

    const-string v7, "ARCHIVE"

    const/16 v17, 0x2

    const/4 v9, 0x6

    invoke-direct {v12, v7, v9, v1, v14}, Lg/ag;-><init>(Ljava/lang/String;ILg/ue;[Ljava/lang/String;)V

    sput-object v12, Lg/ag;->ARCHIVE:Lg/ag;

    new-instance v7, Lg/ag;

    const-string v22, ".flv"

    const-string v23, ".3gp"

    const-string v18, ".mp4"

    const-string v19, ".mkv"

    const-string v20, ".webm"

    const-string v21, ".avi"

    filled-new-array/range {v18 .. v23}, [Ljava/lang/String;

    move-result-object v14

    const/16 v18, 0x6

    const-string v9, "VIDEOS"

    const/16 v19, 0x3

    const/4 v11, 0x7

    invoke-direct {v7, v9, v11, v1, v14}, Lg/ag;-><init>(Ljava/lang/String;ILg/ue;[Ljava/lang/String;)V

    sput-object v7, Lg/ag;->VIDEOS:Lg/ag;

    new-instance v9, Lg/ag;

    const-string v26, ".mid"

    const-string v27, ".midi"

    const-string v20, ".aac"

    const-string v21, ".ogg"

    const-string v22, ".opus"

    const-string v23, ".mp3"

    const-string v24, ".wav"

    const-string v25, ".wma"

    filled-new-array/range {v20 .. v27}, [Ljava/lang/String;

    move-result-object v14

    const/16 v20, 0x7

    const-string v11, "SOUNDS"

    const/16 v21, 0x4

    const/16 v13, 0x8

    invoke-direct {v9, v11, v13, v1, v14}, Lg/ag;-><init>(Ljava/lang/String;ILg/ue;[Ljava/lang/String;)V

    sput-object v9, Lg/ag;->SOUNDS:Lg/ag;

    new-instance v11, Lg/ag;

    const-string v14, ".json"

    filled-new-array {v14}, [Ljava/lang/String;

    move-result-object v14

    const/16 v22, 0x8

    const-string v13, "JSON"

    const/16 v23, 0x5

    const/16 v15, 0x9

    invoke-direct {v11, v13, v15, v3, v14}, Lg/ag;-><init>(Ljava/lang/String;ILg/ue;[Ljava/lang/String;)V

    sput-object v11, Lg/ag;->JSON:Lg/ag;

    new-instance v13, Lg/ag;

    const-string v31, ".kt"

    const-string v32, ".md"

    const-string v24, ".txt"

    const-string v25, ".ini"

    const-string v26, ".conf"

    const-string v27, ".yaml"

    const-string v28, ".properties"

    const-string v29, ".js"

    const-string v30, ".java"

    filled-new-array/range {v24 .. v32}, [Ljava/lang/String;

    move-result-object v14

    const/16 v24, 0x9

    const-string v15, "TEXT"

    const/16 v4, 0xa

    invoke-direct {v13, v15, v4, v3, v14}, Lg/ag;-><init>(Ljava/lang/String;ILg/ue;[Ljava/lang/String;)V

    sput-object v13, Lg/ag;->TEXT:Lg/ag;

    new-instance v14, Lg/ag;

    const-string v15, ".html"

    const/16 v26, 0xa

    const-string v4, ".htm"

    filled-new-array {v15, v4}, [Ljava/lang/String;

    move-result-object v4

    const-string v15, "HTML"

    move-object/from16 v27, v0

    const/16 v0, 0xb

    invoke-direct {v14, v15, v0, v3, v4}, Lg/ag;-><init>(Ljava/lang/String;ILg/ue;[Ljava/lang/String;)V

    sput-object v14, Lg/ag;->HTML:Lg/ag;

    new-instance v4, Lg/ag;

    const-string v15, ".so"

    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v15

    const/16 v28, 0xb

    const-string v0, "LIB"

    move-object/from16 v29, v2

    const/16 v2, 0xc

    invoke-direct {v4, v0, v2, v1, v15}, Lg/ag;-><init>(Ljava/lang/String;ILg/ue;[Ljava/lang/String;)V

    sput-object v4, Lg/ag;->LIB:Lg/ag;

    new-instance v0, Lg/ag;

    const/4 v15, 0x0

    const/16 v30, 0xc

    new-array v2, v15, [Ljava/lang/String;

    const-string v15, "MANIFEST"

    move-object/from16 v31, v4

    const/16 v4, 0xd

    invoke-direct {v0, v15, v4, v3, v2}, Lg/ag;-><init>(Ljava/lang/String;ILg/ue;[Ljava/lang/String;)V

    sput-object v0, Lg/ag;->MANIFEST:Lg/ag;

    new-instance v2, Lg/ag;

    const-string v3, ".bin"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v15, "UNKNOWN_BIN"

    const/16 v32, 0xd

    const/16 v4, 0xe

    invoke-direct {v2, v15, v4, v1, v3}, Lg/ag;-><init>(Ljava/lang/String;ILg/ue;[Ljava/lang/String;)V

    sput-object v2, Lg/ag;->UNKNOWN_BIN:Lg/ag;

    new-instance v1, Lg/ag;

    sget-object v3, Lg/ue;->CONTENT_UNKNOWN:Lg/ue;

    const/4 v15, 0x0

    const/16 v25, 0xe

    new-array v4, v15, [Ljava/lang/String;

    const/16 v33, 0x0

    const-string v15, "UNKNOWN"

    move-object/from16 v34, v0

    const/16 v0, 0xf

    invoke-direct {v1, v15, v0, v3, v4}, Lg/ag;-><init>(Ljava/lang/String;ILg/ue;[Ljava/lang/String;)V

    sput-object v1, Lg/ag;->UNKNOWN:Lg/ag;

    const/16 v3, 0x10

    new-array v3, v3, [Lg/ag;

    aput-object v27, v3, v33

    aput-object v29, v3, v16

    aput-object v5, v3, v17

    aput-object v6, v3, v19

    aput-object v8, v3, v21

    aput-object v10, v3, v23

    aput-object v12, v3, v18

    aput-object v7, v3, v20

    aput-object v9, v3, v22

    aput-object v11, v3, v24

    aput-object v13, v3, v26

    aput-object v14, v3, v28

    aput-object v31, v3, v30

    aput-object v34, v3, v32

    aput-object v2, v3, v25

    aput-object v1, v3, v0

    sput-object v3, Lg/ag;->b:[Lg/ag;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lg/ag;->a:Ljava/util/HashMap;

    invoke-static {}, Lg/ag;->values()[Lg/ag;

    move-result-object v0

    array-length v1, v0

    const/4 v15, 0x0

    :goto_0
    if-ge v15, v1, :cond_2

    aget-object v2, v0, v15

    iget-object v3, v2, Lg/ag;->exts:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    sget-object v7, Lg/ag;->a:Ljava/util/HashMap;

    invoke-virtual {v7, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/ag;

    if-nez v7, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    new-instance v0, Lg/gck;

    const-string v1, "Duplicate extension in ResourceType: "

    invoke-static {v1, v6}, Lg/tn;->x(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;ILg/ue;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lg/ag;->contentType:Lg/ue;

    iput-object p4, p0, Lg/ag;->exts:[Ljava/lang/String;

    return-void
.end method

.method public static c(Ljava/lang/String;)Lg/ag;
    .locals 2

    const-string v0, "/resources.pb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lg/ag;->ARSC:Lg/ag;

    return-object p0

    :cond_0
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lg/ag;->a:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/ag;

    if-eqz v0, :cond_2

    sget-object v1, Lg/ag;->XML:Lg/ag;

    if-ne v0, v1, :cond_1

    const-string v1, "AndroidManifest.xml"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lg/ag;->MANIFEST:Lg/ag;

    return-object p0

    :cond_1
    return-object v0

    :cond_2
    sget-object p0, Lg/ag;->UNKNOWN:Lg/ag;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lg/ag;
    .locals 1

    const-class v0, Lg/ag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lg/ag;

    return-object p0
.end method

.method public static values()[Lg/ag;
    .locals 1

    sget-object v0, Lg/ag;->b:[Lg/ag;

    invoke-virtual {v0}, [Lg/ag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lg/ag;

    return-object v0
.end method
