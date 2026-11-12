// MIMO-MAX Type Definitions

export type MimoState =
  | "idle"
  | "work"
  | "thinking"
  | "scan"
  | "success"
  | "angry"
  | "sad"
  | "shock"
  | "love"
  | "cool"
  | "sleep"
  | "cough"
  | "battle";

export interface Message {
  id: string;
  role: "user" | "assistant" | "system";
  content: string;
  timestamp: Date;
  isStreaming?: boolean;
  toolCalls?: ToolCall[];
}

export interface ToolCall {
  id: string;
  name: string;
  status: "pending" | "running" | "complete" | "error";
  output?: string | object;
}

export interface FileNode {
  name: string;
  path: string;
  type: "file" | "directory";
  children?: FileNode[];
  content?: string;
  language?: string;
}

export interface Task {
  id: string;
  title: string;
  description?: string;
  status: "pending" | "in-progress" | "complete" | "failed";
  progress?: number;
  subtasks?: Task[];
}

export interface MimoAvatar {
  state: MimoState;
  art: string;
  statusText: string;
  description: string;
}
