.class public final synthetic Lg/cin;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# static fields
.field public static final synthetic a:Lg/cin;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/cin;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/cin;->a:Lg/cin;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    new-instance v0, Lg/csn;

    const-string v1, "internal.platform"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lg/csn;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lg/csn;

    const/4 v2, 0x3

    const-string v3, "getVersion"

    invoke-direct {v1, v3, v2}, Lg/csn;-><init>(Ljava/lang/String;I)V

    iget-object v2, v0, Lg/fdk;->h:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
