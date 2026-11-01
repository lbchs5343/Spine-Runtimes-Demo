.class public final synthetic Lg/fcy;
.super Lg/fgb;
.source "SourceFile"

# interfaces
.implements Lg/bnk;


# static fields
.field public static final a:Lg/fcy;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lg/fcy;

    const-string v4, "emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;"

    const/4 v5, 0x0

    const/4 v1, 0x3

    const-class v2, Lg/fjs;

    const-string v3, "emit"

    invoke-direct/range {v0 .. v5}, Lg/fgb;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    sput-object v0, Lg/fcy;->a:Lg/fcy;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;Ljava/lang/Object;Lg/w;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lg/fjs;

    invoke-interface {p1, p2, p3}, Lg/fjs;->b(Ljava/lang/Object;Lg/w;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
