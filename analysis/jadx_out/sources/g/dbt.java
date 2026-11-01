package g;

import android.content.ComponentName;
import android.content.Context;
import androidx.work.impl.background.systemjob.SystemJobService;

/* loaded from: classes.dex */
public final class dbt {

    /* renamed from: a, reason: collision with root package name */
    public final ComponentName f13931a;

    /* renamed from: b, reason: collision with root package name */
    public final dwm f13932b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f13933c;

    static {
        cyl.g("SystemJobInfoConverter");
    }

    public dbt(Context context, dwm dwmVar, boolean z) {
        this.f13932b = dwmVar;
        this.f13931a = new ComponentName(context.getApplicationContext(), (Class<?>) SystemJobService.class);
        this.f13933c = z;
    }
}
