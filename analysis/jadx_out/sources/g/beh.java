package g;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.os.Build;
import android.util.Range;
import com.bykv.vk.component.ttvideo.utils.AVErrorInfo;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes3.dex */
public abstract class beh {

    /* renamed from: b, reason: collision with root package name */
    public static List f11368b;

    /* renamed from: a, reason: collision with root package name */
    public static final HashMap f11367a = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public static final Object f11369c = new Object();

    public static List d(String str) {
        ArrayList arrayList;
        int maxSupportedInstances;
        Object obj = f11369c;
        synchronized (obj) {
            HashMap hashMap = f11367a;
            if (hashMap.containsKey(str)) {
                return (List) hashMap.get(str);
            }
            try {
                synchronized (obj) {
                    try {
                        if (f11368b == null) {
                            f11368b = Arrays.asList(new MediaCodecList(0).getCodecInfos());
                        }
                        arrayList = new ArrayList();
                        for (MediaCodecInfo mediaCodecInfo : f11368b) {
                            if (!mediaCodecInfo.isEncoder() && Arrays.asList(mediaCodecInfo.getSupportedTypes()).contains(str)) {
                                HashMap hashMap2 = new HashMap();
                                hashMap2.put("codecName", mediaCodecInfo.getName());
                                MediaCodecInfo.CodecCapabilities capabilitiesForType = mediaCodecInfo.getCapabilitiesForType(str);
                                ArrayList arrayList2 = new ArrayList();
                                for (MediaCodecInfo.CodecProfileLevel codecProfileLevel : capabilitiesForType.profileLevels) {
                                    arrayList2.add(new Integer[]{Integer.valueOf(codecProfileLevel.profile), Integer.valueOf(codecProfileLevel.level)});
                                }
                                hashMap2.put("profileLevels", arrayList2);
                                MediaCodecInfo.VideoCapabilities videoCapabilities = capabilitiesForType.getVideoCapabilities();
                                hashMap2.put("bitRatesBps", e(videoCapabilities.getBitrateRange()));
                                hashMap2.put("widthAlignment", Integer.valueOf(videoCapabilities.getWidthAlignment()));
                                hashMap2.put("heightAlignment", Integer.valueOf(videoCapabilities.getHeightAlignment()));
                                hashMap2.put("frameRates", e(videoCapabilities.getSupportedFrameRates()));
                                hashMap2.put("widths", e(videoCapabilities.getSupportedWidths()));
                                hashMap2.put("heights", e(videoCapabilities.getSupportedHeights()));
                                if (Build.VERSION.SDK_INT >= 23) {
                                    maxSupportedInstances = capabilitiesForType.getMaxSupportedInstances();
                                    hashMap2.put("instancesLimit", Integer.valueOf(maxSupportedInstances));
                                }
                                arrayList.add(hashMap2);
                            }
                        }
                        f11367a.put(str, arrayList);
                    } finally {
                    }
                }
                return arrayList;
            } catch (LinkageError e2) {
                e = e2;
                HashMap hashMap3 = new HashMap();
                hashMap3.put(AVErrorInfo.ERROR, e.getClass().getSimpleName());
                ArrayList arrayList3 = new ArrayList();
                arrayList3.add(hashMap3);
                f11367a.put(str, arrayList3);
                return arrayList3;
            } catch (RuntimeException e3) {
                e = e3;
                HashMap hashMap32 = new HashMap();
                hashMap32.put(AVErrorInfo.ERROR, e.getClass().getSimpleName());
                ArrayList arrayList32 = new ArrayList();
                arrayList32.add(hashMap32);
                f11367a.put(str, arrayList32);
                return arrayList32;
            }
        }
    }

    public static Integer[] e(Range range) {
        return new Integer[]{(Integer) range.getLower(), (Integer) range.getUpper()};
    }
}
