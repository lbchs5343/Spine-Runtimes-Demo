.class public final Lg/vf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/vf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/vf;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lg/vf;->a:Lg/vf;

    return-void
.end method
