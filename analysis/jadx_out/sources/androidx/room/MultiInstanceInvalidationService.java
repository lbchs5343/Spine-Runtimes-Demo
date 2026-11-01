package androidx.room;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import g.bff;
import g.cmi;
import g.efu;
import java.util.LinkedHashMap;

/* loaded from: classes.dex */
public final class MultiInstanceInvalidationService extends Service {

    /* renamed from: c, reason: collision with root package name */
    public int f325c;

    /* renamed from: d, reason: collision with root package name */
    public final LinkedHashMap f326d = new LinkedHashMap();

    /* renamed from: a, reason: collision with root package name */
    public final efu f323a = new efu(this);

    /* renamed from: b, reason: collision with root package name */
    public final cmi f324b = new cmi(this);

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        bff.p(intent, "intent");
        return this.f324b;
    }
}
