package g;

import android.net.Uri;
import com.tencent.bugly.crashreport.crash.CrashDetailBean;
import com.tencent.bugly.proguard.ag;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class ebk extends Thread {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f15239a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ Object f15240b;

    public /* synthetic */ ebk(int i, Object obj) {
        this.f15239a = i;
        this.f15240b = obj;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        com.tencent.bugly.proguard.ag agVar;
        List<CrashDetailBean> list;
        int i = this.f15239a;
        Object obj = this.f15240b;
        switch (i) {
            case 0:
                com.tencent.bugly.proguard.at atVar = (com.tencent.bugly.proguard.at) obj;
                if (!com.tencent.bugly.proguard.ap.a(atVar.f9626c, "local_crash_lock")) {
                    com.tencent.bugly.proguard.al.c("Failed to lock file for uploading local crash.", new Object[0]);
                    return;
                }
                agVar = ag.a.f9557a;
                List<ag.b> a2 = com.tencent.bugly.proguard.ag.a();
                if (a2 == null || a2.isEmpty()) {
                    com.tencent.bugly.proguard.al.c("sla local data is null", new Object[0]);
                } else {
                    com.tencent.bugly.proguard.al.c("sla load local data list size:%s", Integer.valueOf(a2.size()));
                    Iterator<ag.b> it = a2.iterator();
                    ArrayList arrayList = new ArrayList();
                    while (it.hasNext()) {
                        ag.b next = it.next();
                        if (next.f9559b < com.tencent.bugly.proguard.ap.b() - 604800000) {
                            com.tencent.bugly.proguard.al.c("sla local data is expired:%s", next.f9560c);
                            arrayList.add(next);
                            it.remove();
                        }
                    }
                    com.tencent.bugly.proguard.ag.d(arrayList);
                    agVar.b(a2);
                }
                List<CrashDetailBean> a3 = com.tencent.bugly.proguard.as.a();
                if (a3 == null || a3.size() <= 0) {
                    com.tencent.bugly.proguard.al.c("no crash need to be uploaded at this start", new Object[0]);
                } else {
                    com.tencent.bugly.proguard.al.c("Size of crash list: %s", Integer.valueOf(a3.size()));
                    int size = a3.size();
                    if (size > 20) {
                        ArrayList arrayList2 = new ArrayList();
                        Collections.sort(a3);
                        for (int i2 = 0; i2 < 20; i2++) {
                            arrayList2.add(a3.get((size - 1) - i2));
                        }
                        list = arrayList2;
                    } else {
                        list = a3;
                    }
                    atVar.s.a(list, 0L, false, false, false);
                }
                com.tencent.bugly.proguard.ap.b(atVar.f9626c, "local_crash_lock");
                return;
            case 1:
                HashMap hashMap = (HashMap) obj;
                Uri.Builder buildUpon = Uri.parse("https://pagead2.googlesyndication.com/pagead/gen_204?id=gmob-apps").buildUpon();
                for (String str : hashMap.keySet()) {
                    buildUpon.appendQueryParameter(str, (String) hashMap.get(str));
                }
                String uri = buildUpon.build().toString();
                try {
                    HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(uri).openConnection();
                    try {
                        int responseCode = httpURLConnection.getResponseCode();
                        if (responseCode < 200 || responseCode >= 300) {
                            new StringBuilder(String.valueOf(uri).length() + 65);
                        }
                        httpURLConnection.disconnect();
                        return;
                    } catch (Throwable th) {
                        httpURLConnection.disconnect();
                        throw th;
                    }
                } catch (IOException e2) {
                    e = e2;
                    new StringBuilder(String.valueOf(e.getMessage()).length() + String.valueOf(uri).length() + 27);
                    return;
                } catch (IndexOutOfBoundsException e3) {
                    new StringBuilder(String.valueOf(e3.getMessage()).length() + String.valueOf(uri).length() + 32);
                    return;
                } catch (RuntimeException e4) {
                    e = e4;
                    new StringBuilder(String.valueOf(e.getMessage()).length() + String.valueOf(uri).length() + 27);
                    return;
                } finally {
                }
            default:
                new dfu(null).zza((String) obj);
                return;
        }
    }
}
