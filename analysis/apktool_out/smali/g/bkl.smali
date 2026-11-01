.class public abstract Lg/bkl;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field public static b:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lg/bkl;->a:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lg/bkl;->b:Ljava/util/ArrayList;

    return-void
.end method
