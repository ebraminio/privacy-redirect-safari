//
//  InstancesView.swift
//  Privacy Redirect for Safari
//
//  Created by FIGBERT on 6/24/21.
//

import SwiftUI

struct InstancesView: View {
    @AppStorage("useCustomNitterInstance") var useCustomNitterInstance = false
    @AppStorage("useCustomRedditInstance") var useCustomRedditInstance = false
    @AppStorage("useCustomInvidiousInstance") var useCustomInvidiousInstance = false
    @AppStorage("useCustomBibliogramInstance") var useCustomBibliogramInstance = false
    @AppStorage("useCustomSimplyTranslateInstance") var useCustomSimplyTranslateInstance = false
    @AppStorage("useCustomOsmInstance") var useCustomOsmInstance = false
    @AppStorage("useCustomSearchEngineInstance") var useCustomSearchEngineInstance = false
    @AppStorage("useCustomScribeInstance") var useCustomScribeInstance = false
    @AppStorage("useCustomProxiTokInstance") var useCustomProxiTokInstance = false
    @AppStorage("useCustomRimgoInstance") var useCustomRimgoInstance = false
    
    @AppStorage("nitterInstance") var nitterInstance = "nitter.net"
    @AppStorage("redditInstance") var redditInstance = "teddit.net"
    @AppStorage("invidiousInstance") var invidiousInstance = "invidious.snopyta.org"
    @AppStorage("bibliogramInstance") var bibliogramInstance = "bibliogram.art"
    @AppStorage("simplyTranslateInstance") var simplyTranslateInstance = "translate.metalune.xyz"
    @AppStorage("osmInstance") var osmInstance = "openstreetmap.org"
    @AppStorage("searchEngineInstance") var searchEngineInstance = "duckduckgo.com/"
    @AppStorage("scribeInstance") var scribeInstance = "scribe.rip"
    @AppStorage("proxiTokInstance") var proxiTokInstance = "proxitok.herokuapp.com"
    @AppStorage("rimgoInstance") var rimgoInstance = "i.bcow.xyz"
    
    let instances = Instances()
    
    var body: some View {
        ScrollView {
            VStack {
                VStack(alignment: .leading) {
                    Text("Nitter")
                        .font(.headline)
                    HStack {
                        if !useCustomNitterInstance {
                            Picker(selection: $nitterInstance,
                                   label: Text("Instance"), content: {
                                    ForEach(instances.nitter, id: \.self) { instance in
                                        Text("\(instance)").tag(instance)
                                    }
                            })
                                .labelsHidden()
                        } else {
                            TextField("Nitter Instance", text: $nitterInstance)
                        }
                        Spacer()
                        Toggle("Custom", isOn: $useCustomNitterInstance)
                            .labelsHidden()
                    }
                }
                VStack {
                    VStack(alignment: .leading) {
                        Text("Teddit or Libreddit")
                            .font(.headline)
                        HStack {
                            if !useCustomRedditInstance {
                                Picker(selection: $redditInstance,
                                       label: Text("Instance"), content: {
                                        ForEach(instances.reddit, id: \.self) { instance in
                                            Text("\(instance)").tag(instance)
                                        }
                                })
                                    .labelsHidden()
                            } else {
                                TextField("Reddit Instance", text: $redditInstance)
                            }
                            Spacer()
                            Toggle("Custom", isOn: $useCustomRedditInstance)
                                .labelsHidden()
                        }
                    }
                }
                VStack {
                    VStack(alignment: .leading) {
                        Text("Invidious")
                            .font(.headline)
                        HStack {
                            if !useCustomInvidiousInstance {
                                Picker(selection: $invidiousInstance,
                                       label: Text("Instance"), content: {
                                        ForEach(instances.invidious, id: \.self) { instance in
                                            Text("\(instance)").tag(instance)
                                        }
                                })
                                    .labelsHidden()
                            } else {
                                TextField("Invidious Instance", text: $invidiousInstance)
                            }
                            Spacer()
                            Toggle("Custom", isOn: $useCustomInvidiousInstance)
                                .labelsHidden()
                        }
                    }
                }
                VStack {
                    VStack(alignment: .leading) {
                        Text("Bibliogram")
                            .font(.headline)
                        HStack {
                            if !useCustomBibliogramInstance {
                                Picker(selection: $bibliogramInstance,
                                       label: Text("Instance"), content: {
                                        ForEach(instances.bibliogram, id: \.self) { instance in
                                            Text("\(instance)").tag(instance)
                                        }
                                })
                                    .labelsHidden()
                            } else {
                                TextField("Bibliogram Instance", text: $bibliogramInstance)
                            }
                            Spacer()
                            Toggle("Custom", isOn: $useCustomBibliogramInstance)
                                .labelsHidden()
                        }
                    }
                }
                VStack {
                    VStack(alignment: .leading) {
                        Text("SimplyTranslate")
                            .font(.headline)
                        HStack {
                            if !useCustomSimplyTranslateInstance {
                                Picker(selection: $simplyTranslateInstance,
                                       label: Text("Instance"), content: {
                                        ForEach(instances.simplyTranslate, id: \.self) { instance in
                                            Text("\(instance)").tag(instance)
                                        }
                                })
                                    .labelsHidden()
                            } else {
                                TextField("SimplyTranslate Instance", text: $simplyTranslateInstance)
                            }
                            Spacer()
                            Toggle("Custom", isOn: $useCustomSimplyTranslateInstance)
                                .labelsHidden()
                        }
                    }
                }
                VStack {
                    VStack(alignment: .leading) {
                        Text("OpenStreetMap")
                            .font(.headline)
                        HStack {
                            if !useCustomOsmInstance {
                                Picker(selection: $osmInstance,
                                       label: Text("Instance"), content: {
                                        ForEach(instances.maps, id: \.self) { instance in
                                            Text("\(instance)").tag(instance)
                                        }
                                })
                                    .labelsHidden()
                            } else {
                                TextField("OpenStreetMap Instance", text: $osmInstance)
                            }
                            Spacer()
                            Toggle("Custom", isOn: $useCustomOsmInstance)
                                .labelsHidden()
                        }
                    }
                }
                VStack {
                    VStack(alignment: .leading) {
                        Text("Search Engine")
                            .font(.headline)
                        HStack {
                            if !useCustomSearchEngineInstance {
                                Picker(selection: $searchEngineInstance,
                                       label: Text("Instance"), content: {
                                        ForEach(instances.searchEngines, id: \.id) { instance in
                                            Text("\(instance.link)").tag(instance.url)
                                        }
                                })
                                    .labelsHidden()
                            } else {
                                TextField("Search Engine Instance (including path)", text: $searchEngineInstance)
                            }
                            Spacer()
                            Toggle("Custom", isOn: $useCustomSearchEngineInstance)
                                .labelsHidden()
                        }
                    }
                }
                VStack {
                    VStack(alignment: .leading) {
                        Text("Medium")
                            .font(.headline)
                        HStack {
                            if !useCustomScribeInstance {
                                Picker(selection: $scribeInstance,
                                       label: Text("Instance"), content: {
                                        ForEach(instances.scribe, id: \.self) { instance in
                                            Text("\(instance)").tag(instance)
                                        }
                                })
                                    .labelsHidden()
                            } else {
                                TextField("Scribe Instance", text: $scribeInstance)
                            }
                            Spacer()
                            Toggle("Custom", isOn: $useCustomScribeInstance)
                                .labelsHidden()
                        }
                    }
                }
                VStack {
                    VStack(alignment: .leading) {
                        Text("TikTok")
                            .font(.headline)
                        HStack {
                            if !useCustomProxiTokInstance {
                                Picker(selection: $proxiTokInstance,
                                       label: Text("Instance"), content: {
                                        ForEach(instances.proxiTok, id: \.self) { instance in
                                            Text("\(instance)").tag(instance)
                                        }
                                })
                                    .labelsHidden()
                            } else {
                                TextField("ProxiTok Instance", text: $proxiTokInstance)
                            }
                            Spacer()
                            Toggle("Custom", isOn: $useCustomProxiTokInstance)
                                .labelsHidden()
                        }
                    }
                }
                VStack {
                    VStack(alignment: .leading) {
                        Text("Imgur")
                            .font(.headline)
                        HStack {
                            if !useCustomRimgoInstance {
                                Picker(selection: $rimgoInstance,
                                       label: Text("Instance"), content: {
                                    ForEach(instances.rimgo, id: \.self) { instance in
                                        Text("\(instance)").tag(instance)
                                    }
                                })
                                    .labelsHidden()
                            } else {
                                TextField("Rimgo Instance", text: $rimgoInstance)
                            }
                            Spacer()
                            Toggle("Custom", isOn: $useCustomRimgoInstance)
                                .labelsHidden()
                        }
                    }
                }
            }
            .frame(maxWidth: 600)
        }
    }
}


struct SearchEngineInstance {
    public let link: String
    public let path: String
    public let url: String
    public let id = UUID()
    
    init(_ link: String, path: String = "/") {
        self.link = link
        self.path = path
        self.url = link + path
    }
}


struct InstancesView_Previews: PreviewProvider {
    static var previews: some View {
        InstancesView()
    }
}
