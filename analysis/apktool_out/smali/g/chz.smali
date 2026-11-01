.class public final synthetic Lg/chz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/bto;


# instance fields
.field public final synthetic a:[Lg/boj;

.field public final synthetic b:Lg/epv;


# direct methods
.method public synthetic constructor <init>([Lg/boj;Lg/epv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/chz;->a:[Lg/boj;

    iput-object p2, p0, Lg/chz;->b:Lg/epv;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Lg/dgi;

    check-cast p2, Lg/erz;

    const-string v0, "<unused var>"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "element"

    invoke-static {p2, p1}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lg/chz;->b:Lg/epv;

    iget v0, p1, Lg/epv;->element:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p1, Lg/epv;->element:I

    iget-object p1, p0, Lg/chz;->a:[Lg/boj;

    aput-object p2, p1, v0

    sget-object p1, Lg/dgi;->a:Lg/dgi;

    return-object p1
.end method
