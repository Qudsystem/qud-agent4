export type AgentRole = "orchestrator" | "architect" | "developer" | "reviewer" | "tester" | "documenter"

export type AgentStatus = "idle" | "thinking" | "working" | "complete" | "error" | "scanning"

export interface Agent {
  id: string
  name: string
  role: AgentRole
  status: AgentStatus
  avatar: string
  description: string
  currentTask?: string
  capabilities: string[]
  personality?: string
}

export interface Task {
  id: string
  title: string
  description: string
  status: "pending" | "in-progress" | "complete" | "failed"
  assignedAgent?: string
  subtasks?: Task[]
  output?: string
  createdAt: Date
  completedAt?: Date
  progress?: number
}

export interface Project {
  id: string
  name: string
  description: string
  status: "active" | "paused" | "complete"
  tasks: Task[]
  agents: string[]
  createdAt: Date
}

export interface Message {
  id: string
  role: "user" | "assistant" | "system" | "agent"
  content: string
  agentId?: string
  agentName?: string
  timestamp: Date
  toolCalls?: ToolCall[]
  isStreaming?: boolean
  mimoState?: string
}

export interface ToolCall {
  id: string
  name: string
  input: Record<string, unknown>
  output?: unknown
  status: "pending" | "running" | "complete" | "error"
  progress?: number
  message?: string
}

export interface FileNode {
  name: string
  path: string
  type: "file" | "directory"
  children?: FileNode[]
  content?: string
  language?: string
}

export interface TerminalLine {
  id: string
  type: "command" | "output" | "error" | "warning" | "info" | "success"
  content: string
  timestamp: Date
}
