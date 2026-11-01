package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import com.bytedance.sdk.openadsdk.downloadnew.core.TTDownloadField;
import g.cro;
import g.fso;
import java.io.IOException;
import java.io.Reader;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzebt {
    public int zza = 0;
    public Map zzb = new HashMap();
    public String zzc = "";
    public long zzd = -1;

    public static zzebt zza(Reader reader) throws zzfex {
        try {
            try {
                JsonReader jsonReader = new JsonReader(reader);
                HashMap hashMap = new HashMap();
                String str = "";
                jsonReader.beginObject();
                long j = -1;
                int i = 0;
                while (jsonReader.hasNext()) {
                    String nextName = jsonReader.nextName();
                    if ("response".equals(nextName)) {
                        i = jsonReader.nextInt();
                    } else if ("body".equals(nextName)) {
                        str = jsonReader.nextString();
                    } else if ("latency".equals(nextName)) {
                        j = jsonReader.nextLong();
                    } else if (TTDownloadField.TT_HEADERS.equals(nextName)) {
                        hashMap = new HashMap();
                        jsonReader.beginObject();
                        while (jsonReader.hasNext()) {
                            hashMap.put(jsonReader.nextName(), fso.ad(jsonReader));
                        }
                        jsonReader.endObject();
                    } else {
                        jsonReader.skipValue();
                    }
                }
                jsonReader.endObject();
                zzebt zzebtVar = new zzebt();
                zzebtVar.zza = i;
                if (str != null) {
                    zzebtVar.zzc = str;
                }
                zzebtVar.zzd = j;
                zzebtVar.zzb = hashMap;
                cro.al(reader);
                return zzebtVar;
            } catch (Throwable th) {
                cro.al(reader);
                throw th;
            }
        } catch (IOException e2) {
            e = e2;
            throw new zzfex("Unable to parse Response", e);
        } catch (AssertionError e3) {
            e = e3;
            throw new zzfex("Unable to parse Response", e);
        } catch (IllegalStateException e4) {
            e = e4;
            throw new zzfex("Unable to parse Response", e);
        } catch (NumberFormatException e5) {
            e = e5;
            throw new zzfex("Unable to parse Response", e);
        }
    }
}
