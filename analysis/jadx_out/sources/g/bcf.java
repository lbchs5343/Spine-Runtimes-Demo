package g;

import android.app.Activity;
import android.app.DownloadManager;
import android.content.DialogInterface;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.view.accessibility.AccessibilityManager;
import com.google.android.gms.internal.ads.zzbsh;
import java.io.Serializable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* loaded from: classes.dex */
public final class bcf implements DialogInterface.OnClickListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Serializable f11258a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f11259b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ int f11260c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ Object f11261d;

    public /* synthetic */ bcf(Activity activity, Class cls, Bundle bundle, int i) {
        this.f11260c = i;
        this.f11261d = activity;
        this.f11258a = cls;
        this.f11259b = bundle;
    }

    public bcf(zzbsh zzbshVar, String str, String str2) {
        this.f11260c = 2;
        this.f11261d = str;
        this.f11258a = str2;
        this.f11259b = zzbshVar;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        int i2 = this.f11260c;
        Serializable serializable = this.f11258a;
        Object obj = this.f11261d;
        Object obj2 = this.f11259b;
        switch (i2) {
            case 0:
                Activity activity = (Activity) obj;
                AccessibilityManager accessibilityManager = (AccessibilityManager) activity.getSystemService("accessibility");
                if (accessibilityManager != null && accessibilityManager.isEnabled()) {
                    try {
                        Method declaredMethod = accessibilityManager.getClass().getDeclaredMethod("setState", Integer.TYPE);
                        if (declaredMethod != null) {
                            declaredMethod.setAccessible(true);
                            declaredMethod.invoke(accessibilityManager, 0);
                        }
                        dov.a(activity, (Class) serializable, (Bundle) obj2, true);
                        break;
                    } catch (IllegalAccessException e2) {
                        erl.ai("Disable accessibility fail.", e2);
                        return;
                    } catch (NoSuchMethodException e3) {
                        erl.ai("Disable accessibility fail.", e3);
                        return;
                    } catch (InvocationTargetException e4) {
                        erl.ai("Disable accessibility fail.", e4);
                        return;
                    }
                }
                break;
            case 1:
                dov.a((Activity) obj, (Class) serializable, (Bundle) obj2, false);
                break;
            default:
                zzbsh zzbshVar = (zzbsh) obj2;
                DownloadManager downloadManager = (DownloadManager) zzbshVar.f4959a.getSystemService("download");
                try {
                    DownloadManager.Request request = new DownloadManager.Request(Uri.parse((String) obj));
                    request.setDestinationInExternalPublicDir(Environment.DIRECTORY_PICTURES, (String) serializable);
                    esy esyVar = ti.f20033a.z;
                    request.allowScanningByMediaScanner();
                    request.setNotificationVisibility(1);
                    downloadManager.enqueue(request);
                    break;
                } catch (IllegalStateException unused) {
                    zzbshVar.zzh("Could not store picture.");
                }
        }
    }
}
