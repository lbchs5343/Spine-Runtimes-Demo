.class public final Lg/dwe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/google/android/gms/internal/ads/zzbsb;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbsb;I)V
    .locals 0

    iput p2, p0, Lg/dwe;->a:I

    iput-object p1, p0, Lg/dwe;->b:Lcom/google/android/gms/internal/ads/zzbsb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    iget p1, p0, Lg/dwe;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lg/dwe;->b:Lcom/google/android/gms/internal/ads/zzbsb;

    const-string p2, "Operation denied by user."

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbsk;->zzh(Ljava/lang/String;)V

    return-void

    :pswitch_0
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.EDIT"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object p2, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "title"

    iget-object v0, p0, Lg/dwe;->b:Lcom/google/android/gms/internal/ads/zzbsb;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbsb;->c:Ljava/lang/String;

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "eventLocation"

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbsb;->e:Ljava/lang/String;

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "description"

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbsb;->a:Ljava/lang/String;

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzbsb;->d:J

    const-wide/16 v3, -0x1

    cmp-long p2, v1, v3

    if-lez p2, :cond_0

    const-string p2, "beginTime"

    invoke-virtual {p1, p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_0
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzbsb;->g:J

    cmp-long p2, v1, v3

    if-lez p2, :cond_1

    const-string p2, "endTime"

    invoke-virtual {p1, p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_1
    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object p2, Lg/ti;->a:Lg/ti;

    iget-object p2, p2, Lg/ti;->z:Lg/esy;

    iget-object p2, v0, Lcom/google/android/gms/internal/ads/zzbsb;->b:Landroid/app/Activity;

    invoke-static {p2, p1}, Lg/esy;->ad(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
