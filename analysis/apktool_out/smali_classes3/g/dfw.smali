.class public interface abstract Lg/dfw;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final r:Lg/cfg;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/cfg;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lg/cfg;-><init>(I)V

    sput-object v0, Lg/dfw;->r:Lg/cfg;

    return-void
.end method


# virtual methods
.method public abstract lookup(Ljava/lang/String;)Ljava/util/List;
.end method
