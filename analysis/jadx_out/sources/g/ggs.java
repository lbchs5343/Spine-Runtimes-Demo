package g;

import android.os.Bundle;
import android.util.JsonReader;
import com.google.android.gms.internal.ads.zzbcn;
import com.google.android.gms.internal.ads.zzbvx;
import com.google.android.gms.internal.ads.zzdrv;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public final class ggs {

    /* renamed from: a, reason: collision with root package name */
    public final Bundle f18119a = new Bundle();

    /* renamed from: b, reason: collision with root package name */
    public final long f18120b;

    /* renamed from: c, reason: collision with root package name */
    public final String f18121c;

    /* renamed from: d, reason: collision with root package name */
    public final long f18122d;

    /* renamed from: e, reason: collision with root package name */
    public String f18123e;

    /* renamed from: f, reason: collision with root package name */
    public final zzbvx f18124f;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public ggs(JsonReader jsonReader, zzbvx zzbvxVar) {
        zzbvx zzbvxVar2;
        Bundle bundle;
        char c2;
        this.f18120b = -1L;
        this.f18122d = -1L;
        this.f18124f = zzbvxVar;
        HashMap hashMap = new HashMap();
        jsonReader.beginObject();
        String str = "";
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            nextName = nextName == null ? "" : nextName;
            switch (nextName.hashCode()) {
                case -1573145462:
                    if (nextName.equals("start_time")) {
                        c2 = 2;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -995427962:
                    if (nextName.equals("params")) {
                        c2 = 0;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -271442291:
                    if (nextName.equals("signal_dictionary")) {
                        c2 = 1;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1725551537:
                    if (nextName.equals("end_time")) {
                        c2 = 3;
                        break;
                    }
                    c2 = 65535;
                    break;
                default:
                    c2 = 65535;
                    break;
            }
            if (c2 == 0) {
                str = jsonReader.nextString();
            } else if (c2 == 1) {
                hashMap = new HashMap();
                jsonReader.beginObject();
                while (jsonReader.hasNext()) {
                    hashMap.put(jsonReader.nextName(), jsonReader.nextString());
                }
                jsonReader.endObject();
            } else if (c2 == 2) {
                this.f18120b = jsonReader.nextLong();
            } else if (c2 != 3) {
                jsonReader.skipValue();
            } else {
                this.f18122d = jsonReader.nextLong();
            }
        }
        this.f18121c = str;
        jsonReader.endObject();
        for (Map.Entry entry : hashMap.entrySet()) {
            if (entry.getKey() != null && entry.getValue() != null) {
                this.f18119a.putString((String) entry.getKey(), (String) entry.getValue());
            }
        }
        if (!((Boolean) edt.f15376a.f15379d.zza(zzbcn.zzci)).booleanValue() || (zzbvxVar2 = this.f18124f) == null || (bundle = zzbvxVar2.zzm) == null) {
            return;
        }
        bundle.putLong(zzdrv.GET_SIGNALS_SDKCORE_START.zza(), this.f18120b);
        this.f18124f.zzm.putLong(zzdrv.GET_SIGNALS_SDKCORE_END.zza(), this.f18122d);
    }
}
