.class public final Lg/gte;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/xx;


# static fields
.field public static final a:Lg/gte;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/gte;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lg/gte;->a:Lg/gte;

    const-string v0, "clientMetrics"

    invoke-static {v0}, Lg/cec;->c(Ljava/lang/String;)Lg/cec;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p1}, Lg/awf;->j(Ljava/lang/Object;)Ljava/lang/ClassCastException;

    move-result-object p1

    throw p1
.end method
