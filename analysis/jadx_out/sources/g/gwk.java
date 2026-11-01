package g;

import com.bytedance.pangle.ZeusPluginEventCallback;
import java.util.Calendar;

/* loaded from: classes3.dex */
public final class gwk {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f18882a = 0;

    /* renamed from: b, reason: collision with root package name */
    public Long f18883b;

    static {
        long j = edj.create(1900, 0).timeInMillis;
        Calendar d2 = fau.d(null);
        d2.setTimeInMillis(j);
        fau.b(d2).getTimeInMillis();
        long j2 = edj.create(ZeusPluginEventCallback.EVENT_FINISH_LOAD, 11).timeInMillis;
        Calendar d3 = fau.d(null);
        d3.setTimeInMillis(j2);
        fau.b(d3).getTimeInMillis();
    }
}
