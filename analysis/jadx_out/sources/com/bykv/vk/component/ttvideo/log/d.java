package com.bykv.vk.component.ttvideo.log;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.bykv.vk.component.ttvideo.utils.EngineThreadPool;
import com.bykv.vk.component.ttvideo.utils.Error;
import com.bykv.vk.component.ttvideo.utils.TTVideoEngineLog;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class d implements b {

    /* renamed from: a, reason: collision with root package name */
    private com.bykv.vk.component.ttvideo.log.a f474a;

    /* renamed from: c, reason: collision with root package name */
    private c f476c;

    /* renamed from: e, reason: collision with root package name */
    private String f478e;

    /* renamed from: f, reason: collision with root package name */
    private String f479f;
    private Context j;

    /* renamed from: g, reason: collision with root package name */
    private int f480g = 0;
    public int h = 0;
    private int i = 0;
    private long k = -2147483648L;

    /* renamed from: b, reason: collision with root package name */
    private f f475b = new f();

    /* renamed from: d, reason: collision with root package name */
    private boolean f477d = true;

    public static class a implements Runnable {

        /* renamed from: a, reason: collision with root package name */
        private f f481a;

        /* renamed from: b, reason: collision with root package name */
        private Handler f482b = new Handler(Looper.getMainLooper());

        /* renamed from: c, reason: collision with root package name */
        c f483c;

        /* renamed from: com.bykv.vk.component.ttvideo.log.d$a$a, reason: collision with other inner class name */
        public class RunnableC0001a implements Runnable {

            /* renamed from: a, reason: collision with root package name */
            final /* synthetic */ JSONObject f484a;

            public RunnableC0001a(a aVar, JSONObject jSONObject) {
                this.f484a = jSONObject;
            }

            @Override // java.lang.Runnable
            public void run() {
                e.instance.a(false, this.f484a);
            }
        }

        public a(f fVar, d dVar, c cVar) {
            this.f481a = fVar;
            this.f483c = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            TTVideoEngineLog.i("VideoEventLoggerV2", "AyncGetLogDataRunnable enter");
            f fVar = this.f481a;
            if (fVar == null) {
                TTVideoEngineLog.e("VideoEventLoggerV2", "rEvent is null, return.");
                return;
            }
            JSONObject a2 = fVar.a(this.f483c);
            Handler handler = this.f482b;
            if (handler == null || handler.getLooper() == null) {
                TTVideoEngineLog.i("VideoEventLoggerV2", "report in child thread");
                e.instance.a(false, a2);
            } else {
                TTVideoEngineLog.i("VideoEventLoggerV2", "report in main looper");
                this.f482b.post(new RunnableC0001a(this, a2));
            }
        }
    }

    public d(Context context, com.bykv.vk.component.ttvideo.log.a aVar) {
        this.f474a = aVar;
        this.f476c = new c(aVar, context);
        this.j = context;
    }

    private void b() {
        this.i = 0;
        this.f477d = true;
        this.h = 0;
        this.k = -2147483648L;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0046  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void c() {
        String str;
        StringBuilder sb;
        int indexOf;
        if (!TextUtils.isEmpty(this.f478e)) {
            str = this.f478e;
        } else if (TextUtils.isEmpty(this.f479f)) {
            return;
        } else {
            str = this.f479f;
        }
        try {
            str = URLDecoder.decode(str, "UTF-8");
        } catch (UnsupportedEncodingException e2) {
            e = e2;
            sb = new StringBuilder("exception:");
            sb.append(e.toString());
            TTVideoEngineLog.e("VideoEventLoggerV2", sb.toString());
            indexOf = str.indexOf("&l=");
            if (indexOf > 0) {
            }
        } catch (IllegalArgumentException e3) {
            e = e3;
            sb = new StringBuilder("exception:");
            sb.append(e.toString());
            TTVideoEngineLog.e("VideoEventLoggerV2", sb.toString());
            indexOf = str.indexOf("&l=");
            if (indexOf > 0) {
            }
        }
        indexOf = str.indexOf("&l=");
        if (indexOf > 0) {
            int indexOf2 = str.indexOf("&", indexOf + 1);
            int i = indexOf + 3;
            this.f475b.o = indexOf2 > 0 ? str.substring(i, indexOf2) : str.substring(i);
        }
    }

    private void d() {
        if (this.f475b == null) {
            return;
        }
        TTVideoEngineLog.i("VideoEventLoggerV2", "sendEvent pt_new:" + this.f475b.f490b + ", mEvent:" + this.f475b + ", eventBase:" + this.f476c);
        if (this.f475b.f490b > 0 || this.k > 0) {
            int i = this.f480g;
            if (i > 0) {
                this.f476c.h = i;
            }
            SharedPreferences d2 = com.bytedance.sdk.openadsdk.api.plugin.d.d(this.j, "VideoEventLogger", 0);
            this.f475b.p = d2.getString("playersessionid", "");
            SharedPreferences.Editor edit = d2.edit();
            edit.putString("playersessionid", this.f476c.f472f);
            edit.apply();
            f fVar = this.f475b;
            fVar.n = this.f476c.f472f;
            fVar.h = this.h;
            String str = this.f478e;
            if (str != null) {
                fVar.k = str;
            }
            String str2 = this.f479f;
            if (str2 != null) {
                fVar.l = str2;
            }
            fVar.f491c = fVar.f490b;
            fVar.f489a = this.k;
            if (fVar.f493e <= 0 && fVar.f492d > 0) {
                fVar.f493e = System.currentTimeMillis();
            }
            if (TextUtils.isEmpty(this.f475b.o)) {
                c();
            }
            EngineThreadPool.a().execute(new a(this.f475b, this, this.f476c));
            b();
        }
    }

    private void f(int i) {
        d();
        this.f475b = new f();
    }

    @Override // com.bykv.vk.component.ttvideo.log.b
    public void a() {
        if (this.i != 4) {
            this.i = 2;
            this.f477d = false;
            f fVar = this.f475b;
            if (fVar.f492d <= 0) {
                fVar.f492d = System.currentTimeMillis();
            }
        }
    }

    @Override // com.bykv.vk.component.ttvideo.log.b
    public void a(int i) {
        long currentTimeMillis = System.currentTimeMillis();
        if (i != 5) {
            int i2 = this.i;
            if (i2 != 3 ? i2 != 4 : false) {
                this.f476c.a();
            }
        }
        if (this.f477d) {
            f fVar = this.f475b;
            if (fVar.f492d <= 0) {
                fVar.f494f = currentTimeMillis;
                f(i);
            }
        }
        this.f475b.f493e = currentTimeMillis;
        f(i);
    }

    @Override // com.bykv.vk.component.ttvideo.log.b
    public void a(long j, String str) {
        this.i = 1;
        this.f476c.a(str);
        if (this.k <= 0) {
            this.k = j;
        }
        this.f477d = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0046  */
    @Override // com.bykv.vk.component.ttvideo.log.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void a(Error error, int i) {
        long currentTimeMillis = System.currentTimeMillis();
        int i2 = this.i;
        boolean z = i2 != 3 ? i2 != 4 : false;
        this.i = 5;
        if (this.f477d) {
            f fVar = this.f475b;
            if (fVar.f492d <= 0) {
                fVar.f494f = currentTimeMillis;
                if (z) {
                    this.f476c.a();
                }
                this.f475b.i = error.getType();
                this.f475b.j = error.f497a;
                f(4);
            }
        }
        if (error.f499c.equals(Error.VideoOwnPlayer) || error.f499c.equals(Error.VideoOSPlayer)) {
            this.h++;
        }
        this.f475b.f493e = currentTimeMillis;
        if (z) {
        }
        this.f475b.i = error.getType();
        this.f475b.j = error.f497a;
        f(4);
    }

    @Override // com.bykv.vk.component.ttvideo.log.b
    public void a(Error error, int i, int i2) {
        if (error.f499c.equals(Error.VideoOwnPlayer) || error.f499c.equals(Error.VideoOSPlayer)) {
            this.h++;
        }
    }

    @Override // com.bykv.vk.component.ttvideo.log.b
    public void a(String str) {
        if (this.f476c == null || str == null || str.isEmpty()) {
            return;
        }
        this.f476c.b(str);
    }

    @Override // com.bykv.vk.component.ttvideo.log.b
    public void a(String str, String str2) {
        this.f478e = str;
        c cVar = this.f476c;
        if (cVar != null) {
            cVar.f473g = str;
        }
        this.f479f = str2;
    }

    @Override // com.bykv.vk.component.ttvideo.log.b
    public void b(int i) {
        this.f475b.m = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x003b  */
    @Override // com.bykv.vk.component.ttvideo.log.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void c(int i) {
        if (this.i == 0) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        int i2 = this.i;
        boolean z = i2 != 4;
        if (i2 == 3) {
            z = false;
        }
        this.i = 0;
        if (this.f477d) {
            f fVar = this.f475b;
            if (fVar.f490b > 0 && fVar.f492d <= 0) {
                if (fVar.f494f <= 0) {
                    fVar.f494f = currentTimeMillis;
                }
                if (z) {
                    this.f476c.a();
                }
                f(i);
            }
        }
        this.f475b.f493e = currentTimeMillis;
        if (z) {
        }
        f(i);
    }

    @Override // com.bykv.vk.component.ttvideo.log.b
    public void d(int i) {
        long currentTimeMillis = System.currentTimeMillis();
        if (i == 10) {
            f fVar = this.f475b;
            if (fVar.f490b <= 0) {
                fVar.f490b = currentTimeMillis;
            }
        }
    }

    @Override // com.bykv.vk.component.ttvideo.log.b
    public void e(int i) {
        this.f480g = i;
        this.f476c.h = i;
    }

    @Override // com.bykv.vk.component.ttvideo.log.b
    public void reset() {
        this.f477d = true;
        this.f478e = null;
        this.f479f = null;
        this.f480g = 0;
        this.h = 0;
        this.f476c = new c(this.f474a, this.j);
    }
}
