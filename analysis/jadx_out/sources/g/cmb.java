package g;

import android.app.Notification;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Icon;
import android.media.AudioAttributes;
import android.net.Uri;
import android.view.MenuItem;
import android.view.ViewConfiguration;
import j$.lang.Iterable;
import java.util.function.Consumer;

/* loaded from: classes.dex */
public abstract class cmb {
    public static void a(Context context, Intent intent) {
        context.startForegroundService(intent);
    }

    public static float aa(ViewConfiguration viewConfiguration) {
        return viewConfiguration.getScaledHorizontalScrollFactor();
    }

    public static void ab(MenuItem menuItem, char c2, int i) {
        menuItem.setNumericShortcut(c2, i);
    }

    public static float b(ViewConfiguration viewConfiguration) {
        return viewConfiguration.getScaledVerticalScrollFactor();
    }

    public static void c(MenuItem menuItem, CharSequence charSequence) {
        menuItem.setContentDescription(charSequence);
    }

    public static void d(MenuItem menuItem, ColorStateList colorStateList) {
        menuItem.setIconTintList(colorStateList);
    }

    public static void e(NotificationChannel notificationChannel) {
        notificationChannel.setVibrationPattern(null);
    }

    public static void f(Notification.Builder builder) {
        builder.setGroupAlertBehavior(0);
    }

    public static Icon g(Bitmap bitmap) {
        return Icon.createWithAdaptiveBitmap(bitmap);
    }

    public static void h(pj pjVar, hed hedVar) {
        try {
            if (hedVar.l.j(acq.af)) {
                return;
            }
            pjVar.j(hedVar);
        } catch (BootstrapMethodError | Exception | StackOverflowError e2) {
            String str = e2.getClass().getSimpleName() + " in pass: " + pjVar.getClass().getSimpleName();
            hedVar.getClass();
            dcj.d(hedVar, str, e2);
        }
    }

    public static void i(NotificationChannel notificationChannel) {
        notificationChannel.setDescription(null);
    }

    public static void j(NotificationChannel notificationChannel, boolean z) {
        notificationChannel.enableLights(z);
    }

    public static Notification.Builder k(Context context, String str) {
        return new Notification.Builder(context, str);
    }

    public static void l(NotificationChannel notificationChannel) {
        notificationChannel.setShowBadge(true);
    }

    public static void m(NotificationChannel notificationChannel, Uri uri, AudioAttributes audioAttributes) {
        notificationChannel.setSound(uri, audioAttributes);
    }

    public static void n(Notification.Builder builder) {
        builder.setTimeoutAfter(0L);
    }

    public static void o(NotificationChannel notificationChannel) {
        notificationChannel.enableVibration(false);
    }

    public static void p(Notification.Builder builder) {
        builder.setSettingsText(null);
    }

    public static void q(MenuItem menuItem, PorterDuff.Mode mode) {
        menuItem.setIconTintMode(mode);
    }

    public static void r(NotificationChannel notificationChannel) {
        notificationChannel.setGroup(null);
    }

    public static void s(MenuItem menuItem, char c2, int i) {
        menuItem.setAlphabeticShortcut(c2, i);
    }

    public static NotificationChannel t(int i, String str, String str2) {
        return new NotificationChannel(str, str2, i);
    }

    public static void u(Notification.Builder builder) {
        builder.setBadgeIconType(0);
    }

    public static void v(NotificationChannel notificationChannel, int i) {
        notificationChannel.setLightColor(i);
    }

    public static void w(final pj pjVar, cci cciVar) {
        try {
            if (pjVar.k(cciVar)) {
                final int i = 0;
                Iterable.b.forEach(cciVar.i, new Consumer() { // from class: g.gi
                    @Override // java.util.function.Consumer
                    /* renamed from: accept */
                    public final void n(Object obj) {
                        switch (i) {
                            case 0:
                                cmb.w(pjVar, (cci) obj);
                                break;
                            default:
                                cmb.h(pjVar, (hed) obj);
                                break;
                        }
                    }

                    public final /* synthetic */ Consumer andThen(Consumer consumer) {
                        int i2 = i;
                        return j$.util.function.j.$default$andThen(this, consumer);
                    }
                });
                cciVar.av();
                final int i2 = 1;
                Iterable.b.forEach(cciVar.aj, new Consumer() { // from class: g.gi
                    @Override // java.util.function.Consumer
                    /* renamed from: accept */
                    public final void n(Object obj) {
                        switch (i2) {
                            case 0:
                                cmb.w(pjVar, (cci) obj);
                                break;
                            default:
                                cmb.h(pjVar, (hed) obj);
                                break;
                        }
                    }

                    public final /* synthetic */ Consumer andThen(Consumer consumer) {
                        int i22 = i2;
                        return j$.util.function.j.$default$andThen(this, consumer);
                    }
                });
            }
        } catch (BootstrapMethodError | Exception | StackOverflowError e2) {
            String str = e2.getClass().getSimpleName() + " in pass: " + pjVar.getClass().getSimpleName();
            cciVar.getClass();
            dcj.d(cciVar, str, e2);
        }
    }

    public static void x(Notification.Builder builder) {
        builder.setShortcutId(null);
    }

    public static void y(NotificationManager notificationManager, NotificationChannel notificationChannel) {
        notificationManager.createNotificationChannel(notificationChannel);
    }

    public static void z(MenuItem menuItem, CharSequence charSequence) {
        menuItem.setTooltipText(charSequence);
    }
}
