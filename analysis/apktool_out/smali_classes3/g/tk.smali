.class public final Lg/tk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:Ljava/lang/String;

.field public final c:I

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lg/tk;->c:I

    iput-object p1, p0, Lg/tk;->b:Ljava/lang/String;

    iput-object p3, p0, Lg/tk;->d:Ljava/lang/String;

    iput-object p4, p0, Lg/tk;->a:Ljava/util/Set;

    return-void
.end method
