.class public abstract Lg/dgb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/exj;

.field public static final b:Lg/egt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/exj;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/dgb;->a:Lg/exj;

    new-instance v0, Lg/egt;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/dgb;->b:Lg/egt;

    return-void
.end method


# virtual methods
.method public abstract c(JLjava/lang/Object;)V
.end method

.method public abstract d(JLjava/lang/Object;Ljava/lang/Object;)V
.end method
