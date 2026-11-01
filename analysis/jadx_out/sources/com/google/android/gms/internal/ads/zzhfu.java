package com.google.android.gms.internal.ads;

import g.he;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzhfu {
    public static LinkedHashMap zzb(int i) {
        return new LinkedHashMap(i < 3 ? i + 1 : i < 1073741824 ? (int) ((i / 0.75f) + 1.0f) : he.UNDEFINED_ITEM_ID);
    }

    public static List zzc(int i) {
        return i == 0 ? Collections.EMPTY_LIST : new ArrayList(i);
    }
}
