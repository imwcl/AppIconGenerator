// **************************************************
// *                                  _____         *
// *         __  _  __     ___        \   /         *
// *         \ \/ \/ /    / __\       /  /          *
// *          \  _  /    | (__       /  /           *
// *           \/ \/      \___/     /  /__          *
// *                               /_____/          *
// *                                                *
// **************************************************
//  Github  :https://github.com/imwcl
//  HomePage:https://imwcl.com
//  CSDN    :http://blog.csdn.net/wang631106979
//
//  Created by 王崇磊 on 16/9/14.
//  Copyright © 2016年 王崇磊. All rights reserved.
//
// @class GenerationAppIcon.swift
// @abstract 自动生成AppIcon的swift脚本
// @discussion 一键生成AppIcon
//

//
//  main.swift
//  aaaa
//
//  Created by 王崇磊 on 2017/10/14.
//  Copyright © 2017年 王崇磊. All rights reserved.
//

import Foundation

/// 完整的Contents.json数据
let jsonStr =
"""
{
"images" : [
{
"size" : "20x20",
"idiom" : "iphone",
"filename" : "Icon-App-20x20@2x.png",
"scale" : "2x"
},
{
"size" : "20x20",
"idiom" : "iphone",
"filename" : "Icon-App-20x20@3x.png",
"scale" : "3x"
},
{
"size" : "29x29",
"idiom" : "iphone",
"filename" : "Icon-App-29x29@1x.png",
"scale" : "1x"
},
{
"size" : "29x29",
"idiom" : "iphone",
"filename" : "Icon-App-29x29@2x.png",
"scale" : "2x"
},
{
"size" : "29x29",
"idiom" : "iphone",
"filename" : "Icon-App-29x29@3x.png",
"scale" : "3x"
},
{
"size" : "40x40",
"idiom" : "iphone",
"filename" : "Icon-App-40x40@2x.png",
"scale" : "2x"
},
{
"size" : "40x40",
"idiom" : "iphone",
"filename" : "Icon-App-40x40@3x.png",
"scale" : "3x"
},
{
"size" : "57x57",
"idiom" : "iphone",
"filename" : "Icon-App-57x57@1x.png",
"scale" : "1x"
},
{
"size" : "57x57",
"idiom" : "iphone",
"filename" : "Icon-App-57x57@2x.png",
"scale" : "2x"
},
{
"size" : "60x60",
"idiom" : "iphone",
"filename" : "Icon-App-60x60@2x.png",
"scale" : "2x"
},
{
"size" : "60x60",
"idiom" : "iphone",
"filename" : "Icon-App-60x60@3x.png",
"scale" : "3x"
},
{
"size" : "20x20",
"idiom" : "ipad",
"filename" : "Icon-ipad-App-20x20@1x.png",
"scale" : "1x"
},
{
"size" : "20x20",
"idiom" : "ipad",
"filename" : "Icon-ipad-App-20x20@2x.png",
"scale" : "2x"
},
{
"size" : "29x29",
"idiom" : "ipad",
"filename" : "Icon-ipad-App-29x29@1x.png",
"scale" : "1x"
},
{
"size" : "29x29",
"idiom" : "ipad",
"filename" : "Icon-ipad-App-29x29@2x.png",
"scale" : "2x"
},
{
"size" : "40x40",
"idiom" : "ipad",
"filename" : "Icon-ipad-App-40x40@1x.png",
"scale" : "1x"
},
{
"size" : "40x40",
"idiom" : "ipad",
"filename" : "Icon-ipad-App-40x40@2x.png",
"scale" : "2x"
},
{
"size" : "50x50",
"idiom" : "ipad",
"filename" : "Icon-ipad-Small-50x50@1x.png",
"scale" : "1x"
},
{
"size" : "50x50",
"idiom" : "ipad",
"filename" : "Icon-ipad-Small-50x50@2x.png",
"scale" : "2x"
},
{
"size" : "72x72",
"idiom" : "ipad",
"filename" : "Icon-ipad-App-72x72@1x.png",
"scale" : "1x"
},
{
"size" : "72x72",
"idiom" : "ipad",
"filename" : "Icon-ipad-App-72x72@2x.png",
"scale" : "2x"
},
{
"size" : "76x76",
"idiom" : "ipad",
"filename" : "Icon-ipad-App-76x76@1x.png",
"scale" : "1x"
},
{
"size" : "76x76",
"idiom" : "ipad",
"filename" : "Icon-ipad-App-76x76@2x.png",
"scale" : "2x"
},
{
"size" : "83.5x83.5",
"idiom" : "ipad",
"filename" : "Icon-ipad-App-83.5x83.5@2x.png",
"scale" : "2x"
},
{
"idiom" : "ios-marketing",
"size" : "1024x1024",
"filename" : "Icon-ios-App-1024x1024@1x.png",
"scale" : "1x"
},
{
"idiom" : "car",
"size" : "60x60",
"filename" : "Icon-car-App-60x60@2x.png",
"scale" : "2x"
},
{
"idiom" : "car",
"size" : "60x60",
"filename" : "Icon-car-App-60x60@3x.png",
"scale" : "3x"
},
{
"idiom" : "mac",
"size" : "16x16",
"filename" : "Icon-mac-App-16x16@1x.png",
"scale" : "1x"
},
{
"idiom" : "mac",
"size" : "16x16",
"filename" : "Icon-mac-App-16x16@2x.png",
"scale" : "2x"
},
{
"idiom" : "mac",
"size" : "32x32",
"filename" : "Icon-mac-App-32x32@1x.png",
"scale" : "1x"
},
{
"idiom" : "mac",
"size" : "32x32",
"filename" : "Icon-mac-App-32x32@2x.png",
"scale" : "2x"
},
{
"idiom" : "mac",
"size" : "128x128",
"filename" : "Icon-mac-App-128x128@1x.png",
"scale" : "1x"
},
{
"idiom" : "mac",
"size" : "128x128",
"filename" : "Icon-mac-App-128x128@2x.png",
"scale" : "2x"
},
{
"idiom" : "mac",
"size" : "256x256",
"filename" : "Icon-mac-App-256x256@1x.png",
"scale" : "1x"
},
{
"idiom" : "mac",
"size" : "256x256",
"filename" : "Icon-mac-App-256x256@2x.png",
"scale" : "2x"
},
{
"idiom" : "mac",
"size" : "512x512",
"filename" : "Icon-mac-App-512x512@1x.png",
"scale" : "1x"
},
{
"idiom" : "mac",
"size" : "512x512",
"filename" : "Icon-mac-App-512x512@2x.png",
"scale" : "2x"
},
{
"size" : "24x24",
"idiom" : "watch",
"filename" : "Icon-watch-App-24x24@2x.png",
"scale" : "2x",
"role" : "notificationCenter",
"subtype" : "38mm"
},
{
"size" : "27.5x27.5",
"idiom" : "watch",
"filename" : "Icon-watch-App-27.5x27.5@2x.png",
"scale" : "2x",
"role" : "notificationCenter",
"subtype" : "42mm"
},
{
"size" : "29x29",
"idiom" : "watch",
"role" : "companionSettings",
"filename" : "Icon-watch-App-29x29@2x.png",
"scale" : "2x"
},
{
"size" : "29x29",
"idiom" : "watch",
"role" : "companionSettings",
"filename" : "Icon-watch-App-29x29@3x.png",
"scale" : "3x"
},
{
"size" : "40x40",
"idiom" : "watch",
"filename" : "Icon-watch-App-40x40@2x.png",
"scale" : "2x",
"role" : "appLauncher",
"subtype" : "38mm"
},
{
"size" : "86x86",
"idiom" : "watch",
"filename" : "Icon-watch-App-86x86@2x.png",
"scale" : "2x",
"role" : "quickLook",
"subtype" : "38mm"
},
{
"size" : "98x98",
"idiom" : "watch",
"filename" : "Icon-watch-App-98x98@2x.png",
"scale" : "2x",
"role" : "quickLook",
"subtype" : "42mm"
},
{
"idiom" : "watch-marketing",
"size" : "1024x1024",
"filename" : "Icon-watch-App-1024x1024@1x.png",
"scale" : "1x"
}
],
"info" : {
"version" : 1,
"author" : "xcode"
}
}
"""

struct AppIconImageItem: Codable {
    let size: String
    let idiom: String
    let filename: String
    let scale: String
    let role: String?
    let subtype: String?
}

struct AppIconInfo: Codable {
    let version: Int
    let author: String
}

struct AppIcon: Codable {
    var images: [AppIconImageItem]
    let info: AppIconInfo
}

struct AppIconType: OptionSet {
    let rawValue: Int
    
    static let iPhone = AppIconType(rawValue: 1 << 0)
    static let iPad = AppIconType(rawValue: 1 << 1)
    static let appleWatch = AppIconType(rawValue: 1 << 2)
    static let mac = AppIconType(rawValue: 1 << 3)
    static let carPlay = AppIconType(rawValue: 1 << 4)
    static let errorType = AppIconType(rawValue: 1 << 5)
    
    func getTypeStr() -> String {
        switch self {
        case .iPhone:
            return "iphone"
        case .iPad:
            return "ipad"
        case .appleWatch:
            return "watch"
        case .mac:
            return "mac"
        case .carPlay:
            return "car"
        default:
            return "error"
        }
    }
    
    /// 通过输入的字符串获得AppIconType
    ///
    /// - Parameter typeStr: 输入的typeStr
    /// - Returns: 返回的AppIconType
    static func getTypeAndTypes(typeStr: String) ->(type: AppIconType, types: [AppIconType]) {
        var type: AppIconType = .errorType
        var types = [AppIconType]()
        var strs = typeStr.components(separatedBy: ",")
        /// 去除重复数据
        strs = Array(Set(strs))
        if strs.count != 0 {
            /// 通过strs获取到AppIconType的数组
            types = strs.map {
                switch $0 {
                case "1":
                    return AppIconType.iPhone
                case "2":
                    return AppIconType.iPad
                case "3":
                    return AppIconType.appleWatch
                case "4":
                    return AppIconType.mac
                case "5":
                    return AppIconType.carPlay
                default:
                    return AppIconType.errorType
                }
                }.filter {
                    if $0 == AppIconType.errorType {
                        return false
                    }
                    return true
            }
            type = AppIconType(types)
        }
        return (type, types)
    }
}

/// 获取image的分辨率
///
/// - Parameter image: 传入的image
/// - Returns: 返回的分辨率
func getImageInfo(image: CGImage) -> (width: Int, height: Int) {
    let width  = image.width
    let height = image.height
    print("图片分辨率：\(width) * \(height)")
    return (width, height)
}

/// 图片是否有效
///
/// - Parameter info: 传入图片的分辨率
/// - Returns: 返回结果
func imageIsValid(info: (width: Int, height: Int)) -> Bool {
    if info.width < 1024 && info.height < 1024 {
        return false
    }
    return true
}

/// 通过输入的type获得相应的appIcon
///
/// - Parameter typeStr: 输入的type
/// - Returns: 返回的AppIcon
func getAppIcon(typeStr: String) -> AppIcon? {
    if let jsonData = jsonStr.data(using: .utf8) {
        let decoder = JSONDecoder()
        do {
            var appIcon = try decoder.decode(AppIcon.self, from: jsonData)
            let typeAndTypes = AppIconType.getTypeAndTypes(typeStr: typeStr)
            if typeAndTypes.type != .errorType {
                let typeStrs: [String] = typeAndTypes.types.map { $0.getTypeStr() }.filter { $0 == "error" ? false : true }
                appIcon.images = appIcon.images.filter {
                    if (typeAndTypes.type.contains(.iPhone) || typeAndTypes.type.contains(.iPad)), $0.idiom == "ios-marketing" {
                        return true
                    }
                    if typeAndTypes.type.contains(.appleWatch), $0.idiom == "watch-marketing" {
                        return true
                    }
                    return typeStrs.contains($0.idiom)
                }
            }else {
                return nil
            }
            if appIcon.images.count == 0 {
                return nil
            }
            return appIcon
        }catch {
            print("解析json失败")
            print(error.localizedDescription)
        }
    }else {
        print("解析json失败")
    }
    return nil
}

/// 创建contentsJson
///
/// - Parameter appIcon: 传入的appIcon
func createAppIconContentsJson(appIcon: AppIcon) {
    print("\n开始生成contentsJson\n")
    let encoder = JSONEncoder()
    do {
        encoder.outputFormatting = .prettyPrinted
        let appIconData = try encoder.encode(appIcon)
        if let appIconStr  = String.init(data: appIconData, encoding: .utf8) {
            let contentJsonPath = "AppIcon.appiconset/Contents.json"
            let contentJsonUrl = URL(fileURLWithPath: contentJsonPath)
            try appIconStr.write(to: contentJsonUrl, atomically: true, encoding: .utf8)
            print("contentsJson生成成功\n")
        }else {
            print("contentsJson生成失败")
        }
    }catch {
        print(error.localizedDescription)
    }
}

/// 生成单个image
///
/// - Parameters:
///   - size: 图片的大小
///   - scale: 倍数
func createImage(size: CGSize, scale: CGFloat, image: CGImage, filename: String) {
    print("开始生成图片: \(filename)")
    let width  = Int(size.width * scale)
    let height = Int(size.height * scale)
    let bitsPerComponent = image.bitsPerComponent
    let bytesPerRow = image.bytesPerRow
    let colorSpace  = image.colorSpace
    
    if let context = CGContext.init(data: nil,
                                    width: width,
                                    height: height,
                                    bitsPerComponent: bitsPerComponent,
                                    bytesPerRow: bytesPerRow,
                                    space: colorSpace!,
                                    bitmapInfo: CGImageAlphaInfo.premultipliedLast.rawValue) {
        context.interpolationQuality = .high
        context.draw(image, in: .init(origin: .zero, size: .init(width: width, height: height)))
        if let inputImage = context.makeImage() {
            let outputImagePath = "AppIcon.appiconset/\(filename)"
            let outputUrl = URL(fileURLWithPath: outputImagePath) as CFURL
            let destination = CGImageDestinationCreateWithURL(outputUrl, kUTTypePNG, 1, nil)
            if let destination = destination {
                CGImageDestinationAddImage(destination, inputImage, nil)
                if CGImageDestinationFinalize(destination) {
                    print("图片: \(filename) 生成成功\n")
                }else {
                    print("图片: \(filename) 生成失败\n")
                }
            }
        }else {
            print("图片: \(filename) 生成失败\n")
        }
    }
}

/// 通过imageItem获得item信息
///
/// - Parameter imageItem: 传入的imageItem
/// - Returns: 返回的信息
func getImageItemInfo(imageItem: AppIconImageItem) -> (size: CGSize, scale: CGFloat)? {
    let sizeStrs  = imageItem.size.components(separatedBy: "x")
    let scaleStrs = imageItem.scale.components(separatedBy: "x")
    if  let width = sizeStrs.first,
        let height = sizeStrs.last,
        let scale  = scaleStrs.first {
        let widthInt  = CGFloat(Double(width) ?? 0)
        let heightInt = CGFloat(Double(height) ?? 0)
        let scaleInt  = CGFloat(Double(scale) ?? 0)
        return (.init(width: widthInt, height: heightInt), scaleInt)
    }
    return nil
}

/// 根据appIcon生成images
///
/// - Parameter appIcon: appIcon
func createImages(appIcon: AppIcon, image: CGImage) {
    print("开始生成Images\n")
    for imageitem in appIcon.images {
        if let info = getImageItemInfo(imageItem: imageitem) {
            createImage(size: info.size, scale: info.scale, image: image, filename: imageitem.filename)
        }else {
            let encoder = JSONEncoder()
            do {
                encoder.outputFormatting = .prettyPrinted
                let imageitemData = try encoder.encode(imageitem)
                if let imageitemStr  = String.init(data: imageitemData, encoding: .utf8) {
                    print("json 格式不对：\(imageitemStr)")
                }else {
                    print("json 格式不对")
                }
            }catch {
                print(error.localizedDescription)
            }
        }
    }
}

/// 创建appicon文件
///
/// - Parameter appIcon: appicon
func createFile(appIcon: AppIcon, image: CGImage) {
    let fileManager = FileManager.default
    let filePath = "AppIcon.appiconset"
    do {
        if fileManager.fileExists(atPath: filePath) {
            try fileManager.removeItem(atPath: filePath)
        }
        try fileManager.createDirectory(atPath: filePath, withIntermediateDirectories: true, attributes: nil)
        createAppIconContentsJson(appIcon: appIcon)
        createImages(appIcon: appIcon, image: image)
        print("~~~~~~~~~~~~~~完成~~~~~~~~~~~~~~")
    }catch {
        print("文件目录\(filePath)创建失败")
        print(error.localizedDescription)
    }
}

/// 开始选择AppIcon类型
func selectAppIconType(image: CGImage) {
    print(
        """
    \n请输入想要转换Icon类型的编号(可多选，用,号隔开，例如：1,2,4，默认为1):
    1.iPhone
    2.iPad
    3.AppleWatch
    4.Mac
    5.CarPlay
    """
    )
    if var typeStr = readLine() {
        if typeStr.count == 0 {
            typeStr = "1"
        }
        if let appIcon = getAppIcon(typeStr: typeStr) {
            createFile(appIcon: appIcon, image: image)
        }else {
            print("输入的类型格式有误，请输入例如：1,2,4")
        }
    }else {
        print("获取Icon类型失败")
    }
}

func detailInputImage(url: URL) {
    do{
        let inoutData = try Data(contentsOf: url)
        print("图片大小：\(inoutData.count / 1024) kb")
        let dataProvider = CGDataProvider(data: inoutData as CFData)
        if let inputImage = CGImage(pngDataProviderSource: dataProvider!, decode: nil, shouldInterpolate: true, intent: .defaultIntent) {
            if imageIsValid(info: getImageInfo(image: inputImage)) {
                selectAppIconType(image: inputImage)
            }else {
                print("图片的分辨率不能小于1024x1024")
            }
        }else {
            print("转换失败，图片必须是png格式")
        }
    }catch {
        print(error.localizedDescription)
    }
}

func start() {
    print(
        """
        **************************************************
        *                                  _____         *
        *         __  _  __     ___        \\   /         *
        *         \\ \\/ \\/ /    / __\\       /  /          *
        *          \\  _  /    | (__       /  /           *
        *           \\/ \\/      \\___/     /  /__          *
        *                               /_____/          *
        *                                                *
        **************************************************
        Github  :https://github.com/imwcl
        HomePage:https://imwcl.com
        CSDN    :http://blog.csdn.net/wang631106979 \n
        """
    )
    print("请输入输入图片名（默认为input.png）:")
    if var inputPath = readLine() {
        if inputPath.count == 0 {
            inputPath = "input.png"
        }
        let url  = URL(fileURLWithPath: inputPath)
        detailInputImage(url: url)
    } else {
        print("输入失败")
    }
}

start()


