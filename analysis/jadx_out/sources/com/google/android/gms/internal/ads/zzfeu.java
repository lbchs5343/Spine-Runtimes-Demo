package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import com.bykv.vk.component.ttvideo.player.MediaFormat;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class zzfeu {
    public final int zza;
    public final int zzb;
    public final boolean zzc;

    public zzfeu(int i, int i2, boolean z) {
        this.zza = i;
        this.zzb = i2;
        this.zzc = z;
    }

    public static ArrayList a(JsonReader jsonReader) {
        ArrayList arrayList = new ArrayList();
        jsonReader.beginArray();
        while (jsonReader.hasNext()) {
            jsonReader.beginObject();
            int i = 0;
            int i2 = 0;
            boolean z = false;
            while (jsonReader.hasNext()) {
                String nextName = jsonReader.nextName();
                if (MediaFormat.KEY_WIDTH.equals(nextName)) {
                    i = jsonReader.nextInt();
                } else if (MediaFormat.KEY_HEIGHT.equals(nextName)) {
                    i2 = jsonReader.nextInt();
                } else if ("is_fluid_height".equals(nextName)) {
                    z = jsonReader.nextBoolean();
                } else {
                    jsonReader.skipValue();
                }
            }
            jsonReader.endObject();
            arrayList.add(new zzfeu(i, i2, z));
        }
        jsonReader.endArray();
        return arrayList;
    }
}
