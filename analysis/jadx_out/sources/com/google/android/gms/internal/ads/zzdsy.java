package com.google.android.gms.internal.ads;

import android.util.JsonWriter;
import g.abn;
import g.agd;
import g.cvb;
import g.czz;
import java.io.IOException;
import java.io.StringWriter;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzdsy {

    /* renamed from: a, reason: collision with root package name */
    public final cvb f6486a;

    public zzdsy(cvb cvbVar) {
        this.f6486a = cvbVar;
    }

    public final void zza(List list, String str, String str2, Object... objArr) {
        if (((Boolean) zzbep.zza.zze()).booleanValue()) {
            ((czz) this.f6486a).getClass();
            long currentTimeMillis = System.currentTimeMillis();
            StringWriter stringWriter = new StringWriter();
            JsonWriter jsonWriter = new JsonWriter(stringWriter);
            try {
                jsonWriter.beginObject();
                jsonWriter.name("timestamp").value(currentTimeMillis);
                jsonWriter.name(abn.EXTRA_SOURCE).value(str);
                jsonWriter.name("event").value(str2);
                jsonWriter.name("components").beginArray();
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    jsonWriter.value(it.next().toString());
                }
                jsonWriter.endArray();
                jsonWriter.name("params").beginArray();
                int length = objArr.length;
                for (int i = 0; i < length; i++) {
                    Object obj = objArr[i];
                    jsonWriter.value(obj != null ? obj.toString() : null);
                }
                jsonWriter.endArray();
                jsonWriter.endObject();
                jsonWriter.flush();
                jsonWriter.close();
            } catch (IOException e2) {
                agd.f("unable to log", e2);
            }
            agd.k("AD-DBG ".concat(String.valueOf(stringWriter.toString())));
        }
    }
}
